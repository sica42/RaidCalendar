RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local m = RaidCalendar

if m.CalendarPopup then return end

---@class CalendarPopup
---@field show fun()
---@field hide fun()
---@field toggle fun()
---@field is_visible fun(): boolean
---@field unselect fun()
---@field update fun()

local M = {}

---@type ScrollDropdown
local scroll_drop = LibStub:GetLibrary( "LibScrollDrop-1.2" )

function M.new()
	local popup
	local refresh
	local offset = 0
	local selected
	local events
	local frame_items = {}
	local rows = 5
	local gui = m.GuiElements

	local function save_position( self )
		local point, _, relative_point, x, y = self:GetPoint()

		m.db.popup_calendar.position = {
			point = point,
			relative_point = relative_point,
			x = x,
			y = y
		}
	end


	---@param parent Frame
	---@return Frame
	local function create_item( parent )
		---@class CalendarEventFrame: Button
		local frame = m.FrameBuilder.new()
				:type( "Button" )
				:parent( parent )
				:frame_style( "NONE" )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0.1, 0.1, 0.1, 1 )
				:point( "Left", parent, "Left", 4, 0 )
				--:point( "Right", parent, "Right", -21, 0 )
				:width( 485 )
				:height( 39 )
				:build()

		frame:SetHighlightTexture( "Interface\\QuestFrame\\UI-QuestTitleHighlight" )
		frame:SetScript( "OnClick", function()
			if selected == frame.index then
				selected = nil
				m.event_popup.hide()
			else
				selected = frame.index
				local event = m.db.events[ events[ selected ].key ]
				m.event_popup.show( event.id )
			end

			refresh()
		end )

		local selected_tex = frame:CreateTexture( nil, "ARTWORK" )
		selected_tex:SetTexture( "Interface\\QuestFrame\\UI-QuestLogTitleHighlight" )
		selected_tex:SetAllPoints( frame )
		selected_tex:SetVertexColor( 0.3, 0.3, 1, 1 )
		selected_tex:Hide()

		local title = frame:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
		title:SetPoint( "TopLeft", frame, "TopLeft", 3, -2 )
		title:SetWidth( 280 )
		title:SetHeight( 35 )
		title:SetTextColor( NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b )
		title:SetFont( "Interface\\AddOns\\RaidCalendar\\assets\\Myriad-Pro.ttf", 13, "OUTLINE" )
		title:SetJustifyH( "Left" )
		title:SetJustifyV( "Middle" )

		local date_label = gui.create_icon_label( frame, "Interface\\AddOns\\RaidCalendar\\assets\\icon_date.tga", 85, 14 )
		date_label:SetPoint( "TopRight", frame, "TopRight", 0, -3 )

		local time_label = gui.create_icon_label( frame, "Interface\\AddOns\\RaidCalendar\\assets\\icon_time.tga", 85, 14 )
		time_label:SetPoint( "TopRight", frame, "TopRight", 0, -21 )

		local time_offset = gui.create_icon_label( frame, "Interface\\AddOns\\RaidCalendar\\assets\\icon_hourglass.tga", 100, 14 )
		time_offset:SetPoint( "TopRight", date_label, "TopLeft", -5, 0 )

		local signups_label = gui.create_icon_label( frame, "Interface\\AddOns\\RaidCalendar\\assets\\icon_signups.tga", 100, 14 )
		signups_label:SetPoint( "TopRight", time_label, "TopLeft", -5, 0 )


		---@param select boolean
		frame.set_selected = function( select )
			if select then
				selected_tex:Show()
			else
				selected_tex:Hide()
			end
		end

		frame.set_item = function( index )
			frame.index = index
			local event = m.db.events[ events[ index ].key ]

			title:SetText( event.title )
			date_label.set( date( "%d. %b %Y", event.startTime ) )
			time_label.set( date( m.time_format, event.startTime ) )

			local diff = event.startTime - time( date( "*t" ) )
			time_offset.set( m.format_time_difference( diff ) )
			if diff < 0 then
				time_offset.icon:SetVertexColor( 1, 0, 0, 1 )
			else
				time_offset.icon:SetVertexColor( 1, 1, 1, 1 )
			end

			local signed_up = false
			if event.signUps then
				local signups = 0
				for _, v in ipairs( event.signUps ) do
					if v.className ~= "Absence" then
						signups = signups + 1
					end
					if m.db.user_settings.discord_id and m.db.user_settings.discord_id == v.userId then
						signed_up = true
					end
				end
				signups_label.set( tostring( signups ) .. " signups" )
			elseif event.signUpCount then
				signups_label.set( event.signUpCount .. " signups" )
			end

			if signed_up then
				signups_label.icon:SetVertexColor( 0, 1, 0, 1 )
			else
				signups_label.icon:SetVertexColor( 1, 1, 1, 1 )
			end



			frame:Show()
		end

		return frame
	end

	local function create_frame()
		---@class CalendarFrame: Frame
		local frame = m.FrameBuilder.new()
				:name( "RaidCalendarPopup" )
				:title( string.format( "Raid Calendar v%s", m.version ) )
				:frame_style( "TOOLTIP" )
				:frame_level( 80 )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0, 0, 0, 0.8 )
				:close_button()
				:width( 530 )
				:height( 250 )
				:movable()
				:esc()
				:on_drag_stop( save_position )
				:build()

		if m.db.popup_calendar.position then
			local p = m.db.popup_calendar.position
			frame:ClearAllPoints()
			frame:SetPoint( p.point, UIParent, p.relative_point, p.x, p.y )
		end

		---
		--- Titlebar buttons
		---
		local btn_settings = m.GuiElements.tiny_button( frame, "S", "Settings" )
		btn_settings:SetPoint( "TopRight", frame, "TopRight", -20, -4 )
		btn_settings:SetScript( "OnClick", function()
			if frame.settings:IsVisible() then
				frame.settings:Hide()
				frame:SetHeight( 250 )
			else
				frame.settings:Show()
				frame:SetHeight( 360 )
			end
		end )

		local indicator = CreateFrame( "Frame", nil, frame )
		indicator:SetPoint( "Center", frame, "TopRight", -45, -13 )
		indicator:SetWidth( 15 )
		indicator:SetHeight( 15 )

		frame.indicator_tex = indicator:CreateTexture( nil, "ARTWORK" )
		frame.indicator_tex:SetAllPoints( indicator )
		frame.indicator_tex:SetTexture( "Interface\\TargetingFrame\\UI-TargetingFrame-AttackBackground" )
		frame.indicator_tex:SetVertexColor( 1, 1, 0, 1 )

		---
		--- Events
		---
		local border_events = m.FrameBuilder.new()
				:parent( frame )
				:point( "TopLeft", frame, "TopLeft", 10, -32 )
				:point( "Right", frame, "Right", -10, 0 )
				:height( 208 )
				:frame_style( "TOOLTIP" )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0, 0, 0, 1 )
				:build()

		border_events:EnableMouseWheel( true )
		border_events:SetScript( "OnMouseWheel", function()
			local value = frame.scroll_bar:GetValue() - arg1
			frame.scroll_bar:SetValue( value )
		end )

		local scroll_bar = CreateFrame( "Slider", "RaidCalendarScrollBar", border_events, "UIPanelScrollBarTemplate" )
		frame.scroll_bar = scroll_bar
		scroll_bar:SetPoint( "TopRight", border_events, "TopRight", -5, -20 )
		scroll_bar:SetPoint( "Bottom", border_events, "Bottom", 0, 20 )
		scroll_bar:SetMinMaxValues( 0, 0 )
		scroll_bar:SetValueStep( 1 )
		scroll_bar:SetScript( "OnValueChanged", function()
			offset = arg1
			refresh()
		end )

		for i = 1, rows do
			local item = create_item( border_events )
			item:SetPoint( "Top", border_events, "Top", 4, ((i - 1) * -40) - 4 )
			table.insert( frame_items, item )
		end

		---
		--- Settings
		---
		frame.settings = m.FrameBuilder.new()
				:parent( frame )
				:point( "TopLeft", border_events, "BottomLeft", 0, -6 )
				:point( "Right", frame, "Right", -10, 10 )
				:height( 100 )
				:frame_style( "TOOLTIP" )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0, 0, 0, 1 )
				:hidden()
				:build()

		local input_discord = CreateFrame( "EditBox", nil, frame.settings, "InputBoxTemplate" )
		input_discord:SetPoint( "TopLeft", frame.settings, "TopLeft", 70, -8 )
		input_discord:SetHeight( 22 )
		input_discord:SetWidth( 150 )
		input_discord:SetAutoFocus( false )
		frame.settings.discord = input_discord

		local label_discord = frame.settings:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
		label_discord:SetPoint( "Right", input_discord, "Left", -15, 0 )
		label_discord:SetText( "Discord ID" )

		local cb = CreateFrame( "CheckButton", "RaidCalendarPopupCheckbox", frame.settings, "UICheckButtonTemplate" )
		cb:SetWidth( 22 )
		cb:SetHeight( 22 )
		cb:SetPoint( "TopLeft", frame.settings, "TopLeft", 8, -33 )
		getglobal( cb:GetName() .. 'Text' ):SetText( "Use character name instead of Discord name on signups" )
		frame.settings.use_char_name = cb

		local dd_timeformat = scroll_drop:New( frame.settings, {
			default_text = "",
			dropdown_style = "classic",
			search = false,
			width = 95
		} )

		dd_timeformat:SetPoint( "TopLeft", frame.settings, "TopLeft", 73, -60 )
		dd_timeformat:SetItems( {
			{ value = "24", text = "24-hour" },
			{ value = "12", text = "12-hour" }
		} )
		frame.settings.time_format = dd_timeformat

		local label_timeformat = frame.settings:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
		label_timeformat:SetPoint( "Right", dd_timeformat, "Left", -10, 0 )
		label_timeformat:SetText( "Time format" )


		local btn_save = gui.create_button( frame.settings, "Save", 80, function()
			local discord_id = input_discord:GetText()

			if string.find( discord_id, "^%d+$" ) ~= nil then
				m.db.user_settings.discord_id = input_discord:GetText()
				m.db.user_settings.use_character_name = cb:GetChecked()
				m.db.user_settings.time_format = dd_timeformat.selected

				m.time_format = m.db.user_settings.time_format == "24" and "%H:%M" or "%I:%M %p"

				frame.settings:Hide()
				frame:SetHeight( 250 )
				refresh()
			else
				m.error( "Invalid Discord ID" )
			end
		end )
		btn_save:SetPoint( "BottomRight", frame.settings, "BottomRight", -10, 10 )

		return frame
	end

	function refresh( refresh_data )
		if m.bot_online_status() then
			popup.indicator_tex:SetVertexColor( 0, 1, 0, .9 )
		else
			popup.indicator_tex:SetVertexColor( 1, 0, 0, .9 )
		end

		popup.settings.discord:SetText( m.db.user_settings.discord_id or "" )
		popup.settings.use_char_name:SetChecked( m.db.user_settings.use_character_name )
		popup.settings.time_format:SetValue( m.db.user_settings.time_format == "24" and "24-hour" or "12-hour" )

		if not events or refresh_data then
			events = {}
			for k, v in pairs( m.db.events ) do
				table.insert( events, { key = k, value = v.startTime } )
			end

			table.sort( events, function( a, b )
				return a.value < b.value
			end )

			local max = math.max( 0, getn( events ) - rows )
			popup.scroll_bar:SetMinMaxValues( 0, max )

			if getn( events ) == 0 then
				m.info( "Loading events, hang on..." )
				m.msg.request_events()
			end
		end

		for i = 1, rows do
			if events[ i ] then
				frame_items[ i ].set_item( i + offset )
				frame_items[ i ].set_selected( selected == i + offset )
			else
				frame_items[ i ]:Hide()
			end
		end

		local max = math.max( 0, getn( events ) - rows )
		local value = math.min( max, popup.scroll_bar:GetValue() )

		popup.scroll_bar:SetValue( value )
		if value == 0 then
			m.api[ "RaidCalendarScrollBarScrollUpButton" ]:Disable()
		else
			m.api[ "RaidCalendarScrollBarScrollUpButton" ]:Enable()
		end

		if value == max then
			m.api[ "RaidCalendarScrollBarScrollDownButton" ]:Disable()
		else
			m.api[ "RaidCalendarScrollBarScrollDownButton" ]:Enable()
		end
	end

	local function show()
		if not popup then
			popup = create_frame()
		end

		selected = nil
		popup:Show()
		refresh()
	end

	local function hide()
		if popup then
			popup:Hide()
		end
	end

	local function toggle()
		if popup and popup:IsVisible() then
			popup:Hide()
		else
			show()
		end
	end

	local function is_visible()
		return popup and popup:IsVisible() or false
	end

	local function unselect()
		if popup and popup:IsVisible() then
			selected = nil
			refresh()
		end
	end

	local function update()
		if popup and popup:IsVisible() then
			refresh( true )
		end
	end

	---@type CalendarPopup
	return {
		show = show,
		hide = hide,
		toggle = toggle,
		is_visible = is_visible,
		unselect = unselect,
		update = update
	}
end

m.CalendarPopup = M
return M
