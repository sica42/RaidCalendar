RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local m = RaidCalendar

if m.WelcomePopup then return end

---@class WelcomePopup
---@field bot_response fun( bot_name: string )
---@field discord_response fun( success: boolean, user_id: string, discord_bot_name: string? )
---@field auth_response fun( user_id: string, success: boolean )
---@field add_bot fun( bot_name: string, guild_name: string )
---@field get_current_bot fun()
---@field show fun()
---@field hide fun()

local M = {}

function M.new()
	local popup
	local bot_list_offset = 0
	local bot_items = {}
	local bot_list = {}
	local selected
	local gui = m.GuiElements

	local function start_timer()
		local timer = GetTime()
		local tick = timer + 1
		local sent = false

		selected = nil
		bot_list = {}
		popup.border_bots:Hide()
		popup.status1:SetText( "Searching for bots." )
		popup.status2:SetText( "" )
		popup.status3:SetText( "" )
		popup.step2:Hide()
		popup.input_discord:SetText( "" )
		popup.btn_verify:Enable()
		popup.input_discord:EnableKeyboard( true )
		popup.input_discord:EnableMouse( true )
		popup.btn_complete:Hide()

		popup:SetScript( "OnUpdate", function()
			local now = GetTime()

			if now >= tick then
				local s = popup.status1:GetText()
				popup.status1:SetText( s .. "." )
				tick = tick + 1
			end

			if not sent and now - timer >= 2 then
				sent = true
				if m.msg_channel.get_channel_id() ~= 0 then
					m.msg_channel.request_bots()
				else
					m.error( "Not listening on LFT channel." )
				end
			end

			if now - timer >= 5 then
				popup:SetScript( "OnUpdate", nil )
				popup.status1:SetText( "Searching for bots. No bots found!" )
			end
		end )
	end

	local function on_discord_check()
		local discord_id = popup.input_discord:GetText()
		if discord_id == "" then
			return
		end

		popup.btn_verify:Disable()
		popup.input_discord:EnableKeyboard( false )
		popup.input_discord:EnableMouse( false )

		if bot_list[ selected ].in_guild then
			m.msg.find_discord_id( discord_id )
		else
			m.msg_channel.find_discord_id( discord_id, bot_list[ selected ].bot_name )
		end
	end

	local function on_close()
		StaticPopupDialogs[ "RC_WELCOME_CLOSE" ] = {
			text = "Show welcome popup on this character again?\nYou can type /rc welcome to show it again.",
			button1 = "Yes",
			button2 = "Never",
			OnAccept = function()
				m.db.user_settings.show_welcome_popup = true
				popup:Hide()
			end,
			OnCancel = function()
				m.db.user_settings.show_welcome_popup = false
				popup:Hide()
			end,
			timeout = 0,
			whileDead = true,
			hideOnEscape = true,
		}

		StaticPopup_Show( "RC_WELCOME_CLOSE" )
	end

	local function refresh_bot_list()
		for i = 1, 3 do
			if bot_list[ i ] then
				bot_items[ i ].set_item( i + bot_list_offset )
				bot_items[ i ].set_selected( selected == i + bot_list_offset )
			else
				bot_items[ i ]:Hide()
			end
		end

		local max = math.max( 0, getn( bot_list ) - 3 )
		m.update_scrollbar_buttons( "RaidCalendarWelcomeBotsScrollBar", max )
	end

	local function create_bot_entry( parent )
		---@class BotButton: Button
		local frame = m.FrameBuilder.new()
				:type( "Button" )
				:parent( parent )
				:frame_style( "NONE" )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0.1, 0.1, 0.1, 1 )
				:point( "Left", parent, "Left", 4, 0 )
				:point( "Right", parent, "Right", -21, 0 )
				:height( 18 )
				:build()

		frame:SetHighlightTexture( "Interface\\QuestFrame\\UI-QuestTitleHighlight" )

		local selected_tex = frame:CreateTexture( nil, "ARTWORK" )
		selected_tex:SetTexture( "Interface\\QuestFrame\\UI-QuestLogTitleHighlight" )
		selected_tex:SetAllPoints( frame )
		selected_tex:SetVertexColor( 0.3, 0.3, 1, 0.6 )
		selected_tex:Hide()

		local auth_icon = frame:CreateTexture( nil, "OVERLAY" )
		auth_icon:SetWidth( 14 )
		auth_icon:SetHeight( 14 )
		auth_icon:SetPoint( "Left", frame, "Left", 5, 0 )

		local label_bot = frame:CreateFontString( nil, "ARTWORK", "RCFontNormal" )
		label_bot:SetPoint( "Left", auth_icon, "Right", 5, 0 )
		label_bot:SetJustifyH( "Left" )

		local label_guild = frame:CreateFontString( nil, "ARTWORK", "RCFontNormal" )
		label_guild:SetPoint( "Right", frame, "Right", -5, 0 )
		label_guild:SetJustifyH( "Right" )

		frame:SetScript( "OnEnter", function()
			local tooltip = "Not authorized. Click to authorize."
			if bot_list[ frame.index ].authorized then
				tooltip = "You are already authorized with this bot."
			end

			GameTooltip:SetOwner( frame, "ANCHOR_BOTTOMLEFT" )
			GameTooltip:SetText( tooltip )
			GameTooltip:SetScale( 0.9 )
			GameTooltip:Show()
		end )

		frame:SetScript( "OnLeave", function()
			GameTooltip:SetScale( 1 )
			GameTooltip:Hide()
		end )

		frame:SetScript( "OnClick", function()
			if selected == frame.index then
				selected = nil
			else
				selected = frame.index
			end

			refresh_bot_list()

			popup.status3:SetText( "You must be invited to the guild Discord server before you can authorize your character." )
			popup.btn_complete:Hide()
			popup.step2:Show()
			popup.btn_verify:Enable()
			popup.input_discord:EnableKeyboard( true )
			popup.input_discord:EnableMouse( true )
			popup.input_discord:SetFocus()
		end )

		---@param select boolean
		frame.set_selected = function( select )
			if select then
				selected_tex:Show()
			else
				selected_tex:Hide()
			end
		end

		frame.set_item = function( index )
			local bot = bot_list[ index ]
			frame.index = index
			frame.bot = bot
			label_bot:SetText( bot.bot_name )
			label_guild:SetText( bot.guild_name )
			if bot.authorized then
				auth_icon:SetTexture( "Interface\\Buttons\\UI-CheckBox-Check" )
				auth_icon:SetVertexColor( 0, 1, 0, 1 )
			else
				auth_icon:SetTexture( "Interface\\Buttons\\UI-GroupLoot-Pass-Up" )
				auth_icon:SetVertexColor( 1, 1, 1, 1 )
			end

			frame:Show()
		end

		return frame
	end

	local function create_frame()
		---@class WelcomeFrame: BuilderFrame
		local frame = m.FrameBuilder.new()
				:name( "RaidCalendarWelcomePopup" )
				:title( string.format( "Raid Calendar v%s", m.version ) )
				:frame_style( "TOOLTIP" )
				:frame_level( 70 )
				:point( "Center", UIParent, "Center", 0, 100 )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0, 0, 0, 0.8 )
				:close_button()
				:on_close( on_close )
				:width( 300 )
				:height( 270 )
				:movable()
				:esc()
				:build()

		local label_welcome = frame:CreateFontString( nil, "ARTWORK", "RCFontHighlightBig" )
		label_welcome:SetPoint( "Top", frame, "Top", 0, -40 )
		label_welcome:SetPoint( "Center", frame, "Center", 0, 0 )
		label_welcome:SetText( "Welcome to RaidCalendar" )

		local label_info = frame:CreateFontString( nil, "ARTWORK", "RCFontNormal" )
		label_info:SetPoint( "TopLeft", frame, "TopLeft", 15, -60 )
		label_info:SetPoint( "BottomRight", frame, "TopRight", -15, -90 )
		label_info:SetJustifyH( "Left" )
		label_info:SetText( "Before using RaidCalendar you need to link and verify your Discord account. Please follow the instructions." )

		local label_status1 = frame:CreateFontString( nil, "ARTWORK", "RCFontNormal" )
		label_status1:SetPoint( "TopLeft", label_info, "BottomLeft", 0, -3 )
		label_status1:SetPoint( "Right", label_info, "Right", 0, 0 )
		label_status1:SetJustifyH( "Left" )
		label_status1:SetText( "Checking for bot in guild." )
		frame.status1 = label_status1

		local label_status2 = frame:CreateFontString( nil, "ARTWORK", "RCFontNormal" )
		label_status2:SetPoint( "TopLeft", label_status1, "BottomLeft", 0, 0 )
		label_status2:SetPoint( "BottomRight", label_status1, "BottomRight", 0, -30 )
		label_status2:SetJustifyH( "Left" )
		frame.status2 = label_status2

		local border_bots = m.FrameBuilder.new()
				:parent( frame )
				:point( "TopLeft", label_status2, "BottomLeft", -1, -3 )
				:point( "Right", label_status2, "Right", 1, 0 )
				:height( 62 )
				:frame_style( "TOOLTIP" )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0, 0, 0, 0.5 )
				:hidden()
				:build()

		border_bots:EnableMouseWheel( true )
		border_bots:SetScript( "OnMouseWheel", function()
			local value = frame.scroll_bar:GetValue() - arg1
			frame.scroll_bar:SetValue( value )
		end )
		frame.border_bots = border_bots

		local scroll_bar = CreateFrame( "Slider", "RaidCalendarWelcomeBotsScrollBar", border_bots, "UIPanelScrollBarTemplate" )
		frame.scroll_bar = scroll_bar
		scroll_bar:SetPoint( "TopRight", border_bots, "TopRight", -5, -20 )
		scroll_bar:SetPoint( "Bottom", border_bots, "Bottom", 0, 20 )
		scroll_bar:SetMinMaxValues( 0, 0 )
		scroll_bar:SetValueStep( 1 )
		scroll_bar:SetScript( "OnValueChanged", function()
			bot_list_offset = arg1
			refresh_bot_list()
		end )

		for i = 1, 3 do
			local item = create_bot_entry( border_bots )
			item:SetPoint( "Top", border_bots, "Top", 4, ((i - 1) * -18) - 4 )
			item:Hide()
			table.insert( bot_items, item )
		end

		local label_status3 = frame:CreateFontString( nil, "ARTWORK", "RCFontNormal" )
		label_status3:SetPoint( "TopLeft", border_bots, "BottomLeft", 0, -6 )
		label_status3:SetPoint( "BottomRight", border_bots, "BottomRight", 0, -40 )
		label_status3:SetJustifyV( "Top" )
		label_status3:SetJustifyH( "Left" )
		frame.status3 = label_status3

		local step2 = CreateFrame( "Frame", nil, frame )
		step2:SetPoint( "TopLeft", border_bots, "BottomLeft", 0, -8 )
		step2:SetPoint( "BottomRight", border_bots, "BottomRight", 0, -20 )
		step2:Hide()
		frame.step2 = step2

		local label_discord = step2:CreateFontString( nil, "ARTWORK", "RCFontNormal" )
		label_discord:SetPoint( "TopLeft", label_status3, "BottomLeft", 0, -5 )
		label_discord:SetText( "Discord name/ID" )
		frame.label_discord = label_discord

		local input_discord = CreateFrame( "EditBox", "RaidCalendarWelcomeDiscordId", step2, "InputBoxTemplate" )
		input_discord:SetPoint( "Left", label_discord, "Right", 10, 0 )
		input_discord:SetWidth( 110 )
		input_discord:SetHeight( 22 )
		input_discord:SetAutoFocus( false )
		input_discord:SetScript( "OnEnterPressed", on_discord_check )
		input_discord:SetFontObject( gui.font_highlight )
		frame.input_discord = input_discord

		local btn_verify = gui.create_button( step2, "Verify", 70, on_discord_check )
		btn_verify:SetPoint( "Left", input_discord, "Right", 10, 0 )
		frame.btn_verify = btn_verify

		local btn_complete = gui.create_button( frame, "Close", 80, function() frame:Hide() end )
		btn_complete:SetPoint( "Center", frame, "Center", 0, 0 )
		btn_complete:SetPoint( "Bottom", frame, "Bottom", 0, 10 )
		btn_complete:Hide()
		frame.btn_complete = btn_complete

		gui.pfui_skin( frame )
		return frame
	end

	local function bot_response( name )
		if popup and popup:IsVisible() then
			popup:SetScript( "OnUpdate", nil )

			local s = popup.status1:GetText()
			popup.status1:SetText( "Checking for bot in guild. Got response from \"" .. name .. "\"." )
			popup.status2:SetText( "Enter your Discord username/server nick." )
			popup.step2:Show()
			popup.input_discord:SetFocus()
		end
	end

	local function discord_response( success, user_id, discord_bot_name )
		if popup and popup:IsVisible() then
			if success then
				local discord_bot = discord_bot_name and discord_bot_name or m.db.user_settings.discord_bot
				bot_list[ selected ].discord_bot = discord_bot

				popup.status3:SetText( "Authorization request sent, awaiting response.\nCheck your Discord DM from " .. discord_bot .. "." )

				if bot_list[ selected ].in_guild then
					m.msg.authorize_user( user_id )
				else
					m.msg_channel.authorize_user( user_id, bot_list[ selected ].bot_name )
				end
			else
				popup.status3:SetText( "No User ID found for \"" .. popup.input_discord:GetText() .. "\"." )
				popup.btn_verify:Enable()
				popup.input_discord:EnableKeyboard( true )
				popup.input_discord:EnableMouse( true )
			end
		end
	end

	local function auth_response( user_id, success )
		if success then
			bot_list[ selected ].authorized = true
			popup.status3:SetText( "Authorization granted, you can now signup to events. Click the map icon to get started." )
			popup.step2:Hide()
			popup.btn_complete:Show()
			refresh_bot_list()
		else
			popup.status3:SetText( "Authorization denied!" )
			popup.btn_verify:Enable()
			popup.input_discord:EnableKeyboard( true )
			popup.input_discord:EnableMouse( true )
		end
	end

	local function add_bot( bot_name, guild_name )
		if popup:IsVisible() then
			if not m.find( bot_name, bot_list, "bot_name" ) then
				local data = {
					bot_name = bot_name,
					guild_name = guild_name,
				}
				if guild_name == m.player_guild then
					data.in_guild = true
					data.authorized = m.db.user_settings.discord_id and true or false
				else
					local bot = m.db.bots[ bot_name ]
					data.authorized = bot and bot.discord_id and true or false
				end
				table.insert( bot_list, data )

				table.sort( bot_list, function( a, b )
					if a.in_guild and not b.in_guild then
						return true
					elseif b.in_guild and not a.in_guild then
						return false
					end
					return a.bot_name < b.bot_name
				end )

				popup:SetScript( "OnUpdate", nil )
				popup.status1:SetText( "Searching for bots... Found " .. getn( bot_list ) .. " bots." )
				popup.status2:SetText( "Select the bot belonging to your guild or the guild you're pugging with." )
				popup.border_bots:Show()
				refresh_bot_list()
			end
		end
	end

	local function get_current_bot()
		return bot_list[ selected ]
	end

	local function show()
		if not popup then
			popup = create_frame()
		end
		start_timer()

		popup:Show()
	end

	local function hide()
		if popup then
			popup:Hide()
		end
	end

	---@type WelcomePopup
	return {
		bot_response = bot_response,
		discord_response = discord_response,
		auth_response = auth_response,
		add_bot = add_bot,
		get_current_bot = get_current_bot,
		show = show,
		hide = hide
	}
end

m.WelcomePopup = M
return M
