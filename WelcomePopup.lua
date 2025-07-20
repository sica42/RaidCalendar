RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local m = RaidCalendar

if m.WelcomePopup then return end

---@class WelcomePopup
---@field bot_response fun( bot_name: string )
---@field discord_response fun( success: boolean, user_id: string )
---@field auth_response fun( user_id: string, success: boolean )
---@field show fun()
---@field hide fun()

local M = {}

function M.new()
	local popup
	local gui = m.GuiElements

	local function start_timer()
		local timer = GetTime()
		local tick = timer + 1
		local sent = false

		popup:SetScript( "OnUpdate", function()
			local now = GetTime()

			if now >= tick then
				local s = popup.status1:GetText()
				popup.status1:SetText( s .. "." )
				tick = tick + 1
			end

			if not sent and now - timer >= 2 then
				sent = true
				m.msg.bot_status()
			end

			if now - timer >= 5 then
				popup:SetScript( "OnUpdate", nil )
				popup.status1:SetText( popup.status1:GetText() .. " No response!" )
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

		if string.find( discord_id, "^%d+$" ) then
			popup.status2:SetText( "User ID found (" .. discord_id .. ").")
			popup.status3:SetText( "Authorization request sent, awaiting response.\nCheck your Discord DM from " .. m.db.user_settings.discord_bot .. "." )
			m.msg.authorize_user( discord_id )
			return
		end

		m.msg.find_discord_id( discord_id )
	end

	local function create_frame()
		---@class WelcomeFrame: Frame
		local frame = m.FrameBuilder.new()
				:name( "RaidCalendarWelcomePopup" )
				:title( string.format( "Raid Calendar v%s", m.version ) )
				:frame_style( "TOOLTIP" )
				:frame_level( 70 )
				:point( "Center", UIParent, "Center", 0, 100)
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0, 0, 0, 0.8 )
				:close_button()
				:width( 300 )
				:height( 210 )
				:movable()
				:esc()
				:build()

		local label_welcome = frame:CreateFontString( nil, "ARTWORK", "GIFontHighlightBig" )
		label_welcome:SetPoint( "Top", frame, "Top", 0, -40 )
		label_welcome:SetPoint( "Center", frame, "Center", 0, 0 )
		label_welcome:SetText( "Welcome to RaidCalendar" )

		local label_info = frame:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
		label_info:SetPoint( "TopLeft", frame, "TopLeft", 15, -60 )
		label_info:SetPoint( "BottomRight", frame, "TopRight", -15, -90 )
		label_info:SetJustifyH( "Left" )
		label_info:SetText( "Before using RaidCalendar you need to link and verify your Discord account. Please follow the instructions." )

		local label_status1 = frame:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
		label_status1:SetPoint( "TopLeft", label_info, "BottomLeft", 0, -3 )
		label_status1:SetPoint( "Right", label_info, "Right", 0, 0 )
		label_status1:SetJustifyH( "Left" )
		label_status1:SetText("Checking for bot in guild.")
		frame.status1 = label_status1

		local label_status2 = frame:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
		label_status2:SetPoint( "TopLeft", label_status1, "BottomLeft", 0, -3 )
		label_status2:SetPoint( "Right", label_status1, "Right", 0, 0 )
		label_status2:SetJustifyH( "Left" )
		frame.status2 = label_status2

		local label_status3 = frame:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
		label_status3:SetPoint( "TopLeft", label_status2, "BottomLeft", 0, -3 )
		label_status3:SetPoint( "BottomRight", label_status2, "BottomRight", 0, -63 )
		label_status3:SetJustifyV( "Top" )
		label_status3:SetJustifyH( "Left" )
		frame.status3 = label_status3

		local step2 = CreateFrame( "Frame", nil, frame )
		step2:SetPoint( "TopLeft", frame, "BottomLeft", 15, 40 )
		step2:SetPoint( "BottomRight", frame, "BottomRight", -15, 15 )
		step2:Hide()
		frame.step2 = step2

		local label_discord = step2:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
		label_discord:SetPoint( "TopLeft", step2, "TopLeft", 0, -5 )
		label_discord:SetText( "Discord name/ID" )
		frame.label_discord = label_discord

		local input_discord = CreateFrame( "EditBox", "RaidCalendarWelcomeDiscordId", step2, "InputBoxTemplate" )
		input_discord:SetPoint( "Left", label_discord, "Right", 10, 0 )
		input_discord:SetWidth( 110 )
		input_discord:SetHeight( 22 )
		input_discord:SetAutoFocus( false )
		input_discord:SetScript( "OnEnterPressed", on_discord_check )
		input_discord:SetFontObject(gui.font_highlight )
		input_discord:SetText( m.db.user_settings.discord_id or "" )
		frame.input_discord = input_discord

		local btn_verify = gui.create_button( step2, "Verify", 70, on_discord_check )
		btn_verify:SetPoint( "Left", input_discord, "Right", 10, 0 )
		frame.btn_verify = btn_verify

		local btn_complete = gui.create_button( frame, "Close", 80, function() frame:Hide() end )
		btn_complete:SetPoint( "Center", frame, "Center", 0, 0 )
		btn_complete:SetPoint( "Bottom", frame, "Bottom", 0, 20 )
		btn_complete:Hide()
		frame.btn_complete = btn_complete

		return frame
	end

	local function bot_response( name )
		if popup and popup:IsVisible() then
			popup:SetScript( "OnUpdate", nil )

			local s = popup.status1:GetText()
			popup.status1:SetText( s .. " Got response from \"" .. name .. "\"." )
			popup.status2:SetText( "Enter your Discord ID or username.")
			popup.step2:Show()
			popup.input_discord:SetFocus()
		end
	end

	local function discord_response( success, user_id )
		if popup and popup:IsVisible() then
			if success then
				popup.status2:SetText( "User ID found (" .. user_id .. ").")
				popup.status3:SetText( "Authorization request sent, awaiting response.\nCheck your Discord DM from " .. m.db.user_settings.discord_bot .. "." )
				m.msg.authorize_user( user_id )
			else
				popup.status2:SetText( "No User ID found for \"" .. popup.input_discord:GetText() .. "\"." )
				popup.btn_verify:Enable()
				popup.input_discord:EnableKeyboard( true )
				popup.input_discord:EnableMouse( true )
			end
		end
	end

	local function auth_response( user_id, success )
		if success then
			popup.status3:SetText( "Authorization granted, you can now signup to events. Click the map icon to get started." )
			popup.step2:Hide()
			popup.btn_complete:Show()
		else
			popup.status3:SetText( "Authorization denied!" )
			popup.btn_verify:Enable()
			popup.input_discord:EnableKeyboard( true )
			popup.input_discord:EnableMouse( true )
		end
	end

	local function show()
		if not popup then
			popup = create_frame()
			start_timer()
		end

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
		show = show,
		hide = hide
	}
end

m.WelcomePopup = M
return M
