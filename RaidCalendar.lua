---@class RaidCalendar
RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local m = RaidCalendar

RaidCalendar.name = "RaidCalendar"
RaidCalendar.prefix = "RaidCal"
RaidCalendar.tagcolor = "FF7b1fa2"
RaidCalendar.events = {}
RaidCalendar.debug_enabled = false
RaidCalendar.api = getfenv()

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

	if m.api.IsAddOnLoaded( "pfUI" ) and m.api.pfUI and m.api.pfUI.api and m.api.pfUI.env and m.api.pfUI.env.C then
		self.pfui_skin_enabled = true
	end
end

function RaidCalendar.events:ADDON_LOADED()
	if arg1 ~= self.name then return end

	m.player = UnitName( "player" )
	m.player_class = UnitClass( "player" )

	RaidCalendarDB = RaidCalendarDB or {}
	m.db = RaidCalendarDB
	m.db.events = m.db.events or {}
	m.db.user_settings = m.db.user_settings or {}
	m.db.popup_event = m.db.popup_event or {}
	m.db.popup_calendar = m.db.popup_calendar or {}
	m.db.minimap_icon = m.db.minimap_icon or {}

	---@type MessageHandler
	m.msg = m.MessageHandler.new()

	---@type EventPopup
	m.event_popup = m.EventPopup.new()

	---@type CalendarPopup
	m.calendar_popup = m.CalendarPopup.new()

	---@type MinimapIcon
	m.minimap_icon = m.MinimapIcon.new()

	-- Refresh events if last update is older then 12h
	if not m.db.user_settings.last_updated or time() - m.db.user_settings.last_updated > 43200 then
		m.debug("Fetching events...")
		m.msg.request_events()
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

		if args == "vc" then
			m.msg.version_check()
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
end

RaidCalendar:init()
