---@class RaidCalendar
RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local m = RaidCalendar
local lib_stub = LibStub

RaidCalendar.name = "RaidCalendar"
RaidCalendar.prefix = "RaidCal"
RaidCalendar.tagcolor = "FF7b1fa2"
RaidCalendar.events = {}
RaidCalendar.debug_enabled = false
RaidCalendar.api = getfenv()

---@alias NotAceTimer any
---@alias TimerId number

---@class AceTimer
---@field ScheduleTimer fun( self: NotAceTimer, callback: function, delay: number, ... ): TimerId
---@field ScheduleRepeatingTimer fun( self: NotAceTimer, callback: function, delay: number, arg: any ): TimerId
---@field CancelTimer fun( self: NotAceTimer, timer_id: number )
---@field TimeLeft fun( self: NotAceTimer, timer_id: number )

function RaidCalendar:init()
	self.frame = CreateFrame( "Frame" )
	self.frame:SetScript( "OnEvent", function()
		if self.events[ event ] then
			self.events[ event ]( self )
		end
	end )

	for k, _ in pairs( m.events ) do
		self.frame:RegisterEvent( k )
	end
end

function RaidCalendar.events:ADDON_LOADED()
	if arg1 ~= self.name then return end

	---@type AceTimer
	m.ace_timer = lib_stub( "AceTimer-3.0" )

	m.player = UnitName( "player" )
	m.player_class = UnitClass( "player" )

	RaidCalendarDB = RaidCalendarDB or {}
	m.db = RaidCalendarDB
	m.db.events = m.db.events or {}
	m.db.user_settings = m.db.user_settings or {}
	m.db.user_settings.time_format = m.db.user_settings.time_format or "24"
	m.db.user_settings.channel_access = m.db.user_settings.channel_access or {}
	m.db.popup_sr = m.db.popup_sr or {}
	m.db.popup_event = m.db.popup_event or {}
	m.db.popup_calendar = m.db.popup_calendar or {}
	m.db.minimap_icon = m.db.minimap_icon or {}

	m.time_format = m.db.user_settings.time_format == "24" and "%H:%M" or "%I:%M %p"

	---@type MessageHandler
	m.msg = m.MessageHandler.new()

	---@type EventPopup
	m.event_popup = m.EventPopup.new()

	---@type CalendarPopup
	m.calendar_popup = m.CalendarPopup.new()

	---@type SRPopup
	m.sr_popup = m.SRPopup.new()

	---@type WelcomePopup
	m.welcome_popup = m.WelcomePopup.new()

	---@type MinimapIcon
	m.minimap_icon = m.MinimapIcon.new()

	if m.db.user_settings.sr_admins == nil then
		m.msg.bot_status()
	end

	if m.api.IsAddOnLoaded( "pfUI" ) and m.api.pfUI and m.api.pfUI.api and m.api.pfUI.env and m.api.pfUI.env.C then
		m.pfui_skin_enabled = true
		m.api.pfUI:RegisterSkin( "RaidCalendar", "vanilla", function()
			if m.api.pfUI.env.C.disabled and m.api.pfUI.env.C.disabled[ "skin_RaidCalendar" ] == "1" then
				m.pfui_skin_enabled = false
			end
		end )
	end

	local orig_SetItemRef = SetItemRef
	function SetItemRef( link, text, button, chatFrame )
		local linkType, data = string.match( link, "^([^:]+):(.+)" )

		if linkType == "raidcal" then
			local type, id = string.match( data, "^(%w+):(.+)" )
			if type == "event" then
				m.event_popup.toggle( id )
			elseif type == "sr" then
				if tonumber(id ) == nil then
					_, id = m.find( id, m.db.events, "srId" )
				end
				if tonumber( id ) then
					m.sr_popup.toggle( id )
				end
			end
			return
		end

		return orig_SetItemRef( link, text, button, chatFrame )
	end

	for i = 1, NUM_CHAT_WINDOWS do
		local frame = self.api[ "ChatFrame" .. i ]
		if frame then self.wrap_chat_frame( frame ) end
	end

	m.api[ "SLASH_RaidCalendar1" ] = "/rc"
	m.api[ "SLASH_RaidCalendar2" ] = "/RaidCalendar"

	SlashCmdList[ "RaidCalendar" ] = function( args )
		if args == "debug" then
			m.debug_enabled = not m.debug_enabled
			m.info( "Debug is " .. (m.debug_enabled and "enabled" or "disabled") )
			return
		end

		if args == "clear" then
			m.info( "All events have been removed" )
			m.db.events = {}
			return
		end

		if args == "welcome" then
			m.welcome_popup.show()
			return
		end

		if args == "vc" then
			m.msg.version_check( true )
			return
		end

		if args == "refresh" then
			m.msg.request_events()
			return
		end

		m.calendar_popup.show()
	end

	m.version = GetAddOnMetadata( m.name, "Version" )
	self.info( string.format( "(v%s) Loaded", m.version ) )

	if m.db.user_settings.bot_name and m.db.user_settings.bot_name ~= "" and m.db.user_settings.discord_id then
		-- Refresh events if last update is older then 6h
		if not m.db.user_settings.last_updated or time() - m.db.user_settings.last_updated > 3600 * 6 then
			m.debug( "Fetching events..." )
			m.msg.request_events()
		end
	elseif m.db.user_settings.show_welcome_popup ~= false then
		m.welcome_popup.show()
	end

	self.check_new_version()
end

---@param frame Frame
function RaidCalendar.wrap_chat_frame( frame )
	local original_add_message = frame[ "AddMessage" ]

	frame[ "AddMessage" ] = function( self, msg, ... )
		if msg then
			local pattern = "(%d%d%d%d)%-(%d%d)%-(%d%d)T(%d%d):(%d%d):(%d%d)Z"

			if string.find( msg, pattern ) then
				local year, month, day, hour, minute, second = string.match( msg, pattern )
				local timestamp = time( { year = year, month = month, day = day, hour = hour, min = minute, sec = second } )

				local date_formatted = date( "%A", timestamp ) .. " " .. tonumber( date( "%d", timestamp ) ) .. ". " .. date( "%B", timestamp )
				local time_formatted = date( m.time_format, timestamp )
				msg = string.gsub( msg, pattern, date_formatted )
			end
		end

		return original_add_message( self, msg, unpack( arg ) )
	end
end

function RaidCalendar.check_new_version()
	if not m.db.user_settings.last_versioncheck or time() - m.db.user_settings.last_versioncheck > 3600 * 24 then
		m.msg.bot_status()
		m.msg.version_check()
	end
end

RaidCalendar:init()
