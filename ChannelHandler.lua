RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local m = RaidCalendar

if m.ChannelHandler then return end

---@class ChannelHandler
---@field request_events fun( bots: table )
---@field request_bots fun()
---@field find_discord_id fun( name: string, bot: string )
---@field authorize_user fun( user_id: string, bot: string )
---@field ping fun( bots: table )
---@field on_msg fun( text: string, player_name: string, channel_name: string)
---@field join_channel fun()
---@field get_channel_id fun(): number

local M = {}

function M.new()
	local channel_id = 0
	local channel_name = "LFT"

	---@param command MessageCommand
	---@param bot string?
	---@param data table?
	local function broadcast( command, bot, data )
		m.debug( string.format( "Channel send %s", command ) )
		bot = bot and ":" .. bot or ""
		local _data = ""
		if data then
			for _, v in pairs( data ) do
				_data = _data .. ":" .. v
			end
		end

		SendChatMessage( string.upper( m.prefix ) .. ":" .. command .. bot .. _data, 'CHANNEL', nil, channel_id )
	end

	local function request_events( bots )
		local data = {}
		for bot in pairs( bots ) do
			table.insert( data, bot )
		end

		broadcast( m.MessageCommand.RequestEvents, nil, data )
	end

	local function request_bots()
		broadcast( m.MessageCommand.Who, nil, nil )
	end

	local function find_discord_id( name, bot )
		broadcast( M.CommandHandler.RequestDiscordId, bot, { name = name } )
	end

	local function authorize_user( user_id, bot )
		broadcast( M.MessageCommand.RequestDiscordAuth, bot, {
			userId = user_id
		} )
	end

	local function ping( bots )
		local data = {}
		for bot in pairs( bots ) do
			table.insert( data, bot )
		end

		broadcast( m.MessageCommand.Ping, nil, data )
	end

	local function join_channel()
		local is_in_channel = false
		local channels = { GetChannelList() }

		for _, channel in next, channels do
			if string.upper( channel ) == channel_name then
				is_in_channel = true
				break
			end
		end

		if not is_in_channel then
			JoinChannelByName( channel_name )
		end
		channel_id = GetChannelName( channel_name )
	end

	local function on_msg( text, player_name, channel )
		if player_name ~= m.player then
			local source = string.match( channel, "(%d+)%." )
			if source then
				local _, ch_name = GetChannelName( source )

				if ch_name and string.upper( ch_name ) == channel_name then
					local msg = m.explode( text )
					local bot_name = player_name
					if getn( msg ) > 1 and msg[ 1 ] == "RAIDCAL" then
						m.info( "got raidcal " )
						local command = msg[ 2 ]

						if command == "GUILD" and getn( msg ) == 3 then
							m.info( "got guild " )
							m.welcome_popup.add_bot( bot_name, msg[ 3 ] )
						elseif command == "PONG" then
							if m.db.bots[ bot_name ] then
								m.calendar_popup.set_online( bot_name )
							end
						elseif command == "DID" and getn( msg ) == 5 and msg[ 3 ] == m.player then
							m.welcome_popup.discord_response( msg[ 4 ] ~= "", msg[ 4 ], msg[ 5 ] )
						elseif command == "DAUTH" and getn( msg ) == 5 and msg[ 3 ] == m.player then
							local user_id = msg[ 4 ]
							local success = msg[ 5 ] == "1" and true or false
							if success then
								m.debug( "Saving Discord ID: " .. user_id )
								local bot = m.welcome_popup.get_current_bot()
								m.db.bots[ bot_name ] = {
									discord_id = user_id,
									discord_bot = bot.discord_bot,
									guild = bot.guild_name
								}
							end
							m.welcome_popup.auth_response( user_id, success )
						elseif command == "EVENT" and m.db.bots[ bot_name ] and getn( msg ) >= 13 then
							local event_id = msg[ 3 ]

							if m.db.events[ event_id ] then
								m.db.events[ event_id ].bot = bot_name
							else
								m.db.events[ event_id ] = {
									title = msg[ 4 ],
									color = msg[ 5 ],
									templateId = msg[ 6 ],
									signUpCount = msg[ 7 ],
									leaderId = msg[ 8 ],
									lastUpdated = msg[ 9 ],
									leaderName = msg[ 10 ],
									closeTime = msg[ 11 ],
									startTime = msg[ 12 ],
									endTime = msg[ 13 ],
									bot = bot_name
								}
							end
							m.db.user_settings.last_updated = time()
							m.calendar_popup.update()
						end
					end
				end
			end
		end
	end

	local function get_channel_id()
		return channel_id
	end

	---@type ChannelHandler
	return {
		request_events = request_events,
		request_bots = request_bots,
		find_discord_id = find_discord_id,
		authorize_user = authorize_user,
		ping = ping,
		join_channel = join_channel,
		on_msg = on_msg,
		get_channel_id = get_channel_id
	}
end

m.ChannelHandler = M
return M
