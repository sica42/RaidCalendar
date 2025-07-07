RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local m = RaidCalendar

if m.MessageHandler then return end

---@type MessageCommand
local MessageCommand = {
	Event = "EVENT",
	Events = "EVENTS",
	RequestEvent = "REVENT",
	RequestEvents = "REVENTS",
	Signup = "SIGNUP",
	SignupEdit = "SIGNUP_EDIT",
	SignupResult = "SIGNUP_RESULT",
	VersionCheck = "VERC",
	Version = "VER"
}

---@alias MessageCommand
---| "REVENT"
---| "REVENTS"
---| "EVENT"
---| "EVENTS"
---| "SIGNUP"
---| "SIGNUP_EDIT"
---| "SIGNUP_RESULT"
---| "VERC"
---| "VER"



---@class AceComm
---@field RegisterComm fun( self: any, prefix: string, method: function? )
---@field SendCommMessage fun( self: any, prefix: string, text: string, distribution: string, target: string?, prio: "BULK"|"NORMAL"|"ALERT"?, callbackFn: function?, callbackArg: any? )

---@class MessageHandler
---@field request_event fun( event_id: string )
---@field request_events fun()
---@field signup fun( event_id: string, user_id: string, class_name: string, spec_name: string )
---@field signup_edit fun( event_id: string, signup_id: string, class_name: string, spec_name: string )
---@field version_check fun()

local M = {}

function M.new()
	local lib_stub = LibStub

	---@type AceComm
	local ace_comm = lib_stub( "AceComm-3.0" )

	local chunk_total = 0
	local chunk_data
	local key_map = {
		a = "announcements",
		n = "name",
		ct = "closingTime",
		s = "startTime",
		cl = "classes",
		l = "lastUpdated",
		e = "entryTime",
		d = "description",
		le = "leaderName",
		ch = "channelType",
		ld = "leaderId",
		si = "signUps",
		cn = "channelName",
		ef = "effectiveName",
		r = "roleName",
		c = "color",
		et = "endTime",
		i = "id",
		se = "serverId",
		t = "templateId",
		da = "date",
		ro = "roles",
		st = "status",
		cs = "className",
		sp = "specName",
		p = "position",
		ti = "time",
		u = "userId",
		tl = "title",
		ty = "type",
		li = "limit",
		ci = "channelId",
		sc = "specs",
		di = "displayTitle",
		su = "signUpCount",
		co = "closeTime"
	}

	local value_map = {
		[ "#1" ] = "Tanks",
		[ "#2" ] = "Arms",
		[ "#3" ] = "Fury",
		[ "#4" ] = "Protection",
		[ "#5" ] = "Protection1",
		[ "#6" ] = "Holy",
		[ "#7" ] = "Holy1",
		[ "#8" ] = "Retribution",
		[ "#9" ] = "Guardian",
		[ "#10" ] = "Combat",
		[ "#11" ] = "Demonology",
		[ "#12" ] = "Destruction",
		[ "#13" ] = "Enhancement",
		[ "#14" ] = "Dps",
		[ "#15" ] = "Feral",
		[ "#16" ] = "Assassination",
		[ "#17" ] = "Subtlety",
		[ "#18" ] = "Survival",
		[ "#19" ] = "Beastmastery",
		[ "#20" ] = "Arcane",
		[ "#21" ] = "Fire",
		[ "#22" ] = "Frost",
		[ "#23" ] = "Affliction",
		[ "#24" ] = "Marksmanship",
		[ "#25" ] = "Balance",
		[ "#26" ] = "Shadow",
		[ "#27" ] = "Smite",
		[ "#28" ] = "Elemental",
		[ "#29" ] = "Ranged",
		[ "#30" ] = "Discipline",
		[ "#31" ] = "Restoration",
		[ "#32" ] = "Restoration1",
		[ "#33" ] = "Healer",
		[ "#34" ] = "Late",
		[ "#35" ] = "Bench",
		[ "#36" ] = "Tentative",
		[ "#37" ] = "Absence",
		[ "#38" ] = "Healers",
		[ "#39" ] = "Melee",
		[ "#40" ] = "Tank",
		[ "#41" ] = "primary"
	}

	setmetatable( key_map, { __index = function( _, key ) return key end } );
	setmetatable( value_map, { __index = function( _, key ) return key end } );

	---@param tbl table
	---@param keymap table
	---@param valuemap table
	---@return table
	local function decode( tbl, keymap, valuemap )
		local ret = {}
		for key, value in pairs( tbl ) do
			if type( value ) == "table" then
				value = decode( value, keymap, valuemap )
			elseif type( value ) == "string" then
				value = valuemap[ value ] or value
			end

			ret[ keymap[ key ] ] = value
		end

		return ret
	end

	---@param command MessageCommand
	---@param data table?
	local function broadcast( command, data )
		m.debug( string.format( "Broadcasting %s", command ) )
		local _data = data and m.flatten( data ) or ""
		ace_comm:SendCommMessage( m.prefix, command .. "::" .. _data, "GUILD", nil, "NORMAL" )
	end

	local function request_events()
		broadcast( MessageCommand.RequestEvents )
	end

	local function request_event( event_id )
		broadcast( MessageCommand.RequestEvent, {
			id = event_id
		} )
	end

	local function signup( event_id, user_id, class_name, spec_name )
		local name
		if m.db.user_settings.use_character_name then
			name = m.player
		end

		broadcast( MessageCommand.Signup, {
			eventId = event_id,
			userId = user_id,
			className = class_name,
			specName = spec_name,
			name = name
		} );
	end

	local function signup_edit( event_id, signup_id, class_name, spec_name )
		local name
		if m.db.user_settings.use_character_name then
			name = m.player
		end

		broadcast( MessageCommand.SignupEdit, {
			eventId = event_id,
			signupId = signup_id,
			className = class_name,
			specName = spec_name,
			name = name
		} );
	end

	local function version_check()
		broadcast( MessageCommand.VersionCheck )
	end

	---@param command string
	---@param data table
	---@param sender string
	local function on_command( command, data, sender )
		if command == MessageCommand.Event then
			--
			-- EVENT
			--
			data = decode( data, key_map, value_map )

			m.debug( "Got event id: " .. data.id )
			m.db.events[ data.id ] = data
			m.event_popup.update( data.id )
		elseif command == MessageCommand.Events then
			--
			-- EVENTS
			--
			data = decode( data, key_map, value_map )
			if data.error then
				m.error( data.error )
				return
			end

			m.debug( "Receiving events requested by " .. (data.player or "UNKNOWN") )
			for _, event in data.events do
				if m.db.events[ event.id ] then
					-- Only send event update request from player who requested it if needed
					if event.lastUpdated > m.db.events[ event.id ].lastUpdated and data.player == m.player then
						m.debug( "Update event: " .. event.title )
						request_event( event.id )
					end
				else
					m.debug( event.id )
					m.debug( "New event: " .. event.title )
					m.db.events[ event.id ] = event
				end
			end

			-- Remove old and deleted raids
			for id, event in m.db.events do
				if not m.find( id, data.events, "id" ) then
					m.debug( "Remove event: " .. event.title )
					m.db.events[ id ] = nil
				end
			end

			m.db.user_settings.last_updated = time()
			m.calendar_popup.update()
		elseif command == MessageCommand.SignupResult then
			--
			-- SIGNUP_RESULT
			--
			data = decode( data, key_map, value_map )
			m.debug( m.dump( data ) )

			if data.success then
				local _, index = m.find( data.signUp.id, m.db.events[ data.eventId ].signUps, "id" )

				m.db.events[ data.eventId ].lastUpdated = tonumber( data.lastUpdated )
				if index then
					m.db.events[ data.eventId ].signUps[ index ] = data.signUp
				else
					table.insert( m.db.events[ data.eventId ].signUps, data.signUp )
				end

				m.calendar_popup.update()
				m.event_popup.update( data.eventId )
			else
				m.error( "Signup failed: " .. data.status )
			end
		elseif command == MessageCommand.VersionCheck then
			--
			-- Receive version request
			--
			broadcast( MessageCommand.Version, { requester = sender, version = m.version, class = m.player_class } )
		elseif command == MessageCommand.Version then
			--
			-- Receive version
			--
			if data.requester == m.player then
				m.info( string.format( "%s [v%s]", m.colorize_player_by_class( sender, data.class ), data.version ), true )
			end
		end
	end

	local function on_comm_received( prefix, data_str, _, sender )
		if prefix ~= m.prefix or sender == m.player then return end

		local command = string.match( data_str, "^([_%u]-)::" )
		if (command) then
			data_str = string.gsub( data_str, "^.-::", "" )

			local lua_data = loadstring( "return " .. data_str )()

			on_command( command, lua_data, sender )
			return
		end

		command = string.match( data_str, "^#(.-)#" )
		data_str = string.gsub( data_str, "^#.-#", "" )

		if command then
			if command == "ct" then
				chunk_total = tonumber( data_str ) or 0
			elseif string.find( command, "c%d+" ) then
				local chunk_number = tonumber( string.match( command, "c(%d+)" ) )
				chunk_data = chunk_number == 1 and data_str or chunk_data .. data_str

				if chunk_number == chunk_total then
					local cmd = string.match( chunk_data, "^#(.-)#" )
					chunk_data = string.gsub( chunk_data, "^#.-#", "" )

					local lua_data = loadstring( "return " .. chunk_data )()
					on_command( cmd, lua_data, sender )
				end
			elseif command then
				local lua_data = loadstring( "return " .. data_str )()
				on_command( command, lua_data, sender )
			end
		else
			m.debug( "No command: " .. data_str )
		end
	end

	ace_comm.RegisterComm( M, m.prefix, on_comm_received )

	---@type MessageHandler
	return {
		request_event = request_event,
		request_events = request_events,
		signup = signup,
		signup_edit = signup_edit,
		version_check = version_check
	}
end

m.MessageHandler = M
return M
