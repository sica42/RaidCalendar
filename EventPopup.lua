RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local m = RaidCalendar

if m.EventPopup then return end

---@class EventPopup
---@field show fun( event_id: string )
---@field hide fun()
---@field toggle fun()
---@field is_visible fun(): boolean
---@field update fun( event_id: string? )
---@field online_status fun( online: boolean )

---@class Signup
---@field id number
---@field userid string
---@field position number
---@field name string
---@field entryTime number
---@field status string
---@field specName string
---@field className string
---@field roleName string

local M = {}

---@type ScrollDropdown
local scroll_drop = LibStub:GetLibrary( "LibScrollDrop-1.3" )

function M.new()
	local popup
	local event
	local signup_id
	local frame_cache = {}
	local refresh
	local gui = m.GuiElements

	local buttons = { "Signup", "Bench", "Late", "Tentative", "Absence", "Change Spec" }

	local function save_position( self )
		local point, _, relative_point, x, y = self:GetPoint()

		m.db.popup_event.position = {
			point = point,
			relative_point = relative_point,
			x = x,
			y = y
		}
	end

	local function on_hide()
		m.calendar_popup.unselect()
	end

	---@param frame_type string
	local function get_from_cache( frame_type )
		frame_cache[ frame_type ] = frame_cache[ frame_type ] or {}

		for i = getn( frame_cache[ frame_type ] ), 1, -1 do
			if not frame_cache[ frame_type ][ i ].is_used then
				return frame_cache[ frame_type ][ i ]
			end
		end
	end

	local function on_button_click()
		local btn_name = this.title

		if not m.db.user_settings.discord_id then
			m.error( "DiscordID is not set" )
			return
		end

		if btn_name == "Signup" then
			m.db.user_settings[ event.templateId .. "_className" ] = popup.dd_class.selected
			m.db.user_settings[ event.templateId .. "_specName" ] = popup.dd_spec.selected

			if not m.db.user_settings[ event.templateId .. "_className" ] then
				m.error( "Class not selected" )
				return
			elseif not m.db.user_settings[ event.templateId .. "_specName" ] then
				m.error( "Spec not selected" )
				return
			end
			for _, v in buttons do
				local btn = "btn_" .. string.gsub( string.lower( v ), "%s", "_" )
				popup[ btn ]:Disable()
			end
			if signup_id then
				m.msg.signup_edit( event.id, signup_id )
			else
				m.msg.signup( event.id, m.db.user_settings.discord_id )
			end
		elseif btn_name == "Change Spec" then
			for _, v in buttons do
				local btn = "btn_" .. string.gsub( string.lower( v ), "%s", "_" )
				popup[ btn ]:Hide()
			end
			popup.cs_change:Enable()
			popup.cs_change:Show()
			popup.cs_cancel:Enable()
			popup.cs_cancel:Show()

			popup.dd_class:SetPoint( "Top", popup.attending, "Top", 0, 0 )
			popup.dd_class:Show()
			popup.dd_spec:Show()
		else
			for _, v in buttons do
				local btn = "btn_" .. string.gsub( string.lower( v ), "%s", "_" )
				popup[ btn ]:Disable()
			end
			m.msg.signup_edit( event.id, signup_id, btn_name )
		end
	end

	local function change_spec()
		if not popup.dd_class.selected then
			m.error( "Class not selected" )
			return
		end

		if not popup.dd_spec.selected then
			m.error( "Spec not selected" )
			return
		end

		popup.cs_change:Disable()

		m.db.user_settings[ event.templateId .. "_className" ] = popup.dd_class.selected
		m.db.user_settings[ event.templateId .. "_specName" ] = popup.dd_spec.selected

		m.msg.signup_edit( event.id, signup_id )
	end

	---@param parent Frame
	---@param class string
	---@param count number
	---@return ClassFrame
	local function create_class_frame( parent, class, count )
		local frame = get_from_cache( "class" )

		if not frame then
			---@class ClassFrame: Frame
			frame = CreateFrame( "Frame", nil, parent )
			frame:SetWidth( 100 )
			frame:SetHeight( 100 )

			frame.header = gui.create_icon_label( frame, "", 100 )
			frame.header:SetPoint( "TopLeft", frame, "TopLeft", 0, 0 )
			frame.header:SetBackdrop( { bgFile = "Interface\\Buttons\\WHITE8X8" } )
			frame.header:SetBackdropColor( 0.3, 0.3, 0.3, 1 )

			frame.is_used = true
			table.insert( frame_cache[ "class" ], frame )
		else
			frame:SetParent( parent )
			frame.is_used = true
		end

		frame.header.set( class .. " (" .. tostring( count ) .. ")" )


		if gui.class_icons[ string.upper( class ) ] then
			frame.header.set_icon( "Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes" )
			frame.header.icon:SetTexCoord( unpack( gui.class_icons[ string.upper( class ) ] ) )
		else
			frame.header.set_icon( "Interface\\AddOns\\RaidCalendar\\assets\\icon_" .. string.lower( class ) .. ".tga" )
			frame.header.icon:SetTexCoord( 0, 1, 0, 1 )
		end

		frame:Show()

		return frame
	end

	---@param parent Frame
	---@param signup Signup
	local function create_player_frame( parent, signup )
		local frame = get_from_cache( "player" )


		if not frame then
			---@class PlayerFrame: Frame
			frame = CreateFrame( "Frame", nil, parent )
			frame:SetWidth( 100 )
			frame:SetHeight( 16 )
			frame:SetBackdrop( { bgFile = "Interface\\Buttons\\WHITE8X8" } )
			frame:SetBackdropColor( 0.2, 0.2, 0.2, 1 )

			frame.player = gui.create_icon_label( frame, "", 100 )
			frame.player:SetPoint( "TopLeft", frame, "TopLeft", 0, 0 )

			frame.is_used = true
			table.insert( frame_cache[ "player" ], frame )
		else
			frame.is_used = true
			frame:SetParent( parent )
		end

		local entry_time = date( "%d. %b %Y " .. m.time_format, signup.entryTime )
		frame.player.set( signup.name, signup.position, entry_time )
		frame.player.set_icon( gui.spec_icons[ signup.specName ] and gui.spec_icons[ signup.specName ] or "", string.match( signup.specName, "(%a+)" ) )
		frame:Show()

		return frame
	end

	local function create_frame()
		---@class EventFrame: BuilderFrame
		local frame = m.FrameBuilder.new()
				:name( "RaidCalendarEventPopup" )
				:title( string.format( "Raid Calendar v%s", m.version ) )
				:frame_style( "TOOLTIP" )
				:frame_level( 100 )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0, 0, 0, 0.9 )
				:close_button()
				:width( 540 )
				:height( 380 )
				:movable()
				:esc()
				:on_drag_stop( save_position )
				:on_hide( on_hide )
				:build()

		if m.db.popup_event.position then
			local p = m.db.popup_event.position
			frame:ClearAllPoints()
			frame:SetPoint( p.point, UIParent, p.relative_point, p.x, p.y )
		end

		frame.online_indicator = gui.create_online_indicator( frame, frame.titlebar.btn_close )

		local border_desc = m.FrameBuilder.new()
				:parent( frame )
				:point( "TopLeft", frame, "TopLeft", 10, -32 )
				:point( "BottomRight", frame, "TopRight", -10, -132 )
				:frame_style( "TOOLTIP" )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0.08, 0.08, 0.08, 1 )
				:build()

		border_desc:EnableMouseWheel( true )
		border_desc:SetScript( "OnMouseWheel", function()
			local value = frame.scroll_bar:GetValue() - arg1 * 11.851852176058
			frame.scroll_bar:SetValue( value )
		end )
		frame.border_desc = border_desc

		local scroll_bar = CreateFrame( "Slider", "RaidCalendarDescScrollBar", border_desc, "UIPanelScrollBarTemplate" )
		frame.scroll_bar = scroll_bar
		scroll_bar:SetPoint( "TopRight", border_desc, "TopRight", -5, -20 )
		scroll_bar:SetPoint( "Bottom", border_desc, "Bottom", 0, 20 )
		scroll_bar:SetMinMaxValues( 0, 0 )
		scroll_bar:SetValueStep( 1 )
		scroll_bar:SetScript( "OnValueChanged", function()
			frame.desc:SetPoint( "Top", border_desc, "Top", 0, arg1 - 10 )
		end )

		frame.desc_scroll = CreateFrame( "ScrollFrame", nil, border_desc )
		frame.desc_scroll:SetPoint( "TopLeft", border_desc, "TopLeft", 8, -5 )
		frame.desc_scroll:SetPoint( "BottomRight", border_desc, "BottomRight", -22, 5 )

		frame.desc_frame = CreateFrame( "Frame", nil, frame.desc_scroll )
		frame.desc_scroll:SetScrollChild( frame.desc_frame )
		frame.desc_frame:SetWidth( 480 )
		frame.desc_frame:SetHeight( 1 )

		frame.desc = frame.desc_frame:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
		frame.desc:SetPoint( "Top", frame.desc_frame, "Top", 0, 0 )
		frame.desc:SetPoint( "Left", frame.desc_frame, "Left", 0, 0 )
		frame.desc:SetPoint( "Right", frame.desc_frame, "Right", 0, 0 )
		frame.desc:SetJustifyH( "Left" )
		frame.desc:SetJustifyV( "Top" )

		frame.leader = gui.create_icon_label( frame, "Interface\\AddOns\\RaidCalendar\\assets\\icon_leader.tga", 140 )
		frame.leader:SetPoint( "TopLeft", frame, "TopLeft", 20, -140 )

		frame.signups = gui.create_icon_label( frame, "Interface\\AddOns\\RaidCalendar\\assets\\icon_signups.tga", 80 )
		frame.signups:SetPoint( "TopLeft", frame.leader, "TopRight", 5, 0 )

		frame.date = gui.create_icon_label( frame, "Interface\\AddOns\\RaidCalendar\\assets\\icon_date.tga", 110 )
		frame.date:SetPoint( "TopLeft", frame.signups, "TopRight", 5, 0 )

		frame.time = gui.create_icon_label( frame, "Interface\\AddOns\\RaidCalendar\\assets\\icon_time.tga", 70 )
		frame.time:SetPoint( "TopLeft", frame.date, "TopRight", 5, 0 )

		frame.time_offset = gui.create_icon_label( frame, "Interface\\AddOns\\RaidCalendar\\assets\\icon_hourglass.tga" )
		frame.time_offset:SetPoint( "TopLeft", frame.time, "TopRight", 5, 0 )

		frame.attending = m.FrameBuilder.new()
				:parent( frame )
				:point( "Top", frame.leader, "Bottom", 0, -7 )
				:point( "Left", frame, "Left", 10, 0 )
				:frame_style( "TOOLTIP" )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0.08, 0.08, 0.08, 1 )
				:width( 416 )
				:build()

		frame.missing = m.FrameBuilder.new()
				:parent( frame )
				:point( "TopLeft", frame.attending, "BottomLeft", 0, -5 )
				:frame_style( "TOOLTIP" )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0.08, 0.08, 0.08, 1 )
				:width( 416 )
				:build()

		local prev
		for _, v in buttons do
			local btn = "btn_" .. string.gsub( string.lower( v ), "%s", "_" )
			frame[ btn ] = gui.create_button( frame, v, 100, on_button_click )
			if prev then
				frame[ btn ]:SetPoint( "TopRight", prev, "BottomRight", 0, -5 )
			else
				frame[ btn ]:SetPoint( "Top", frame.attending, "TopRight", 0, 0 )
				frame[ btn ]:SetPoint( "Right", frame, "Right", -10, -0 )
			end
			prev = frame[ btn ]
		end

		frame.label_noaccess = frame:CreateFontString( nil, "ARTWORK", "GIFontHighlight" )
		frame.label_noaccess:SetPoint( "TopLeft", frame[ "btn_signup" ], "BottomLeft", 0, -10 )
		frame.label_noaccess:SetPoint( "BottomRight", frame[ "btn_signup" ], "BottomRight", 0, -110 )
		frame.label_noaccess:SetJustifyV( "Top" )
		frame.label_noaccess:SetJustifyH( "Left" )
		frame.label_noaccess:SetText( "No access to signup for this event." )
		frame.label_noaccess:Hide()

		frame.cs_change = gui.create_button( frame, "Change", 100, change_spec )
		frame.cs_change:SetPoint( "TopRight", frame, "TopRight", -10, -230 )
		frame.cs_change:Hide()

		frame.cs_cancel = gui.create_button( frame, "Cancel", 100, function() refresh( event.id ) end )
		frame.cs_cancel:SetPoint( "TopRight", frame.cs_change, "BottomRight", 0, -5 )
		frame.cs_cancel:Hide();

		frame.dd_class = scroll_drop:New( frame, {
			default_text = "Select class",
			dropdown_style = m.pfui_skin_enabled and "pfui" or "classic",
			label_on_select = "value",
			search = false,
			width = 95
		} )

		frame.dd_class:SetPoint( "TopRight", frame, "TopRight", -12, -360 )
		frame.dd_class:SetItems( function()
			local list = {}

			for _, v in event.classes do
				if v.type == "primary" then
					table.insert( list, {
						value = v.name,
						text = v.name,
					} )
				end
			end

			return list
		end, function( value )
			frame.dd_spec:SetText( "Select spec" )
		end )

		frame.dd_spec = scroll_drop:New( frame, {
			default_text = "Select spec",
			dropdown_style = m.pfui_skin_enabled and "pfui" or "classic",
			label_on_select = "value",
			search = false,
			width = 95
		} )
		frame.dd_spec:SetPoint( "TopRight", frame.dd_class, "BottomRight", 0, -5 )
		frame.dd_spec:SetItems( function()
			local list = {}
			local class = frame.dd_class.selected

			if class then
				for _, v in m.find( class, event.classes, "name" ).specs do
					table.insert( list, {
						value = v.name,
						text = string.match( v.name, "(%a+)" ),
						icon = gui.spec_icons[ v.name ],
					} )
				end
			end

			return list
		end )

		gui.pfui_skin( frame )
		return frame
	end

	local function set_description( desc )
		popup.desc:SetText( desc )

		local lineHeight = 14
		local frameWidth = popup.desc_frame:GetWidth()
		local textWidth = popup.desc:GetStringWidth()
		local numLines = math.ceil( textWidth / frameWidth )

		local newlineCount = 0
		for i = 1, string.len( desc ) do
			if string.sub( desc, i, i ) == "\n" then
				newlineCount = newlineCount + 1
			end
		end

		local totalLines = newlineCount + numLines
		local textHeight = totalLines * lineHeight + 10

		popup.desc:SetHeight( 700 )
		popup.scroll_bar:SetMinMaxValues( 0, math.max( 0, textHeight - 100 ) )
		popup.scroll_bar:SetValue( 0 )
	end

	function refresh( event_id )
		local now = time( date( "*t" ) )
		local signup_class
		event = m.db.events[ event_id ]

		popup.online_indicator.update()

		-- Reset cached elements
		for _, type in frame_cache do
			for _, frame in type do
				frame.is_used = false
				frame:Hide()
			end
		end

		-- Event details
		popup.titlebar.title:SetText( event.title )

		if not event.description then
			set_description( 'Hang on while event data is loaded...' )
			m.msg.request_event( event_id )
			return
		end
		set_description( event.description )

		popup.leader.set( event.leaderName )
		popup.date.set( date( "%d. %B %Y", event.startTime ) )

		local time_format = m.db.user_settings.time_format == "24" and "%H:%M" or "%I:%M %p"
		popup.time.set( date( time_format, event.startTime ) )
		popup.time_offset.set( m.format_time_difference( event.startTime - now ) )

		--
		-- Signup counts
		--
		table.sort( event.signUps, function( a, b )
			if a.specName == nil and b.specName ~= nil then
				return true -- nil comes before non-nil
			elseif a.specName ~= nil and b.specName == nil then
				return false -- non-nil comes after nil
			elseif a.specName == b.specName then
				return a.position < b.position
			else
				return a.specName < b.specName
			end
		end )

		local signups_count = { Total = 0 }
		local classes_count = 0
		for _, v in pairs( event.signUps ) do
			if v.className ~= "Tentative" and v.className ~= "Absence" and v.className ~= "Late" then
				signups_count[ "Total" ] = signups_count[ "Total" ] + 1
				if not signups_count[ v.className ] then
					classes_count = classes_count + 1
				end
			end
			signups_count[ v.className ] = signups_count[ v.className ] and signups_count[ v.className ] + 1 or 1
		end

		local extra = (signups_count[ "Tentative" ] and signups_count[ "Tentative" ] or 0) + (signups_count[ "Late" ] and signups_count[ "Late" ] or 0)
		popup.signups.set( tostring( signups_count[ "Total" ] ) .. (extra > 0 and " (+" .. extra .. ")" or "") )

		--
		-- Classes
		--
		local current
		local data = {
			attending = { x = 5, y = -5, max_y = 0, count = 0, total_y = 0 },
			missing = { x = 5, y = -5, max_y = 0, count = 0, total_y = 0 }
		}

		signup_id = nil
		for _, class in ipairs( event.classes ) do
			current = class.type == "primary" and "attending" or "missing"

			local class_frame = create_class_frame( popup[ current ], class.name, signups_count[ class.name ] or 0 )
			class_frame:SetPoint( "TopLeft", popup[ current ], "TopLeft", data[ current ].x, data[ current ].y )

			data[ current ].x = data[ current ].x + 102
			data[ current ].count = data[ current ].count + 1

			local y = 17
			for _, v in pairs( event.signUps ) do
				if v.className == class.name then
					local player_frame = create_player_frame( class_frame, v )
					player_frame:SetPoint( "TopLeft", class_frame, "TopLeft", 0, -y )

					y = y + 17
					if y > data[ current ].max_y then data[ current ].max_y = y end
					if m.db.user_settings.discord_id and m.db.user_settings.discord_id == v.userId then
						signup_id = v.id
						signup_class = class.name
					end
				end
			end

			if y == 17 then
				class_frame:Hide()
				data[ current ].x = data[ current ].x - 102
				data[ current ].count = data[ current ].count - 1
			end

			if data[ current ].count ~= 0 and data[ current ].count ~= classes_count and mod( data[ current ].count, 4 ) == 0 then
				data[ current ].x = 5
				data[ current ].total_y = data[ current ].total_y + data[ current ].max_y + 15
				data[ current ].y = -5 - data[ current ].total_y
				data[ current ].max_y = 0
			end

			class_frame:SetHeight( y )
		end

		popup.attending:SetHeight( math.max( 20, data[ "attending" ].total_y + data[ "attending" ].max_y + 9 ) )

		if data[ "missing" ].count == 0 then
			popup.missing:SetHeight( 0 )
			popup.missing:Hide()
		else
			popup.missing:SetHeight( data[ "missing" ].total_y + data[ "missing" ].max_y + 9 )
			popup.missing:Show()
		end

		popup:SetHeight( math.max( 345, 196 + data[ "attending" ].total_y + data[ "attending" ].max_y + data[ "missing" ].total_y + data[ "missing" ].max_y ) )

		--
		-- Buttons
		--
		local class = m.db.user_settings[ event.templateId .. "_className" ]
		popup.dd_class:SetSelected( class or nil )
		popup.dd_class:Hide()

		local spec = m.db.user_settings[ event.templateId .. "_specName" ]
		popup.dd_spec:SetSelected( spec or nil )
		popup.dd_spec:Hide()
		popup.cs_change:Hide()
		popup.cs_cancel:Hide()

		if signup_id then
			for _, v in buttons do
				local btn = "btn_" .. string.gsub( string.lower( v ), "%s", "_" )
				popup[ btn ]:Enable()
				popup[ btn ]:Show()
			end

			local btn = "btn_" .. string.gsub( string.lower( signup_class ), "%s", "_" )
			if popup[ btn ] then
				popup[ btn ]:Disable()
			else
				popup.btn_signup:Disable()
			end
		else
			popup.btn_signup:Show()
			popup.btn_signup:Enable()
			popup.dd_class:SetPoint( "Top", popup, "Top", 0, -220 )
			popup.dd_class:Show()
			popup.dd_spec:Show()
			for _, v in buttons do
				if v ~= "Signup" then
					local btn = "btn_" .. string.gsub( string.lower( v ), "%s", "_" )
					popup[ btn ]:Hide()
				end
			end
		end

		-- Event closed or no access
		popup.label_noaccess:Hide()
		local has_access = m.db.user_settings.channel_access[ event.channelId ]
		if event.closingTime < now or has_access == false then
			for _, v in buttons do
				local btn = "btn_" .. string.gsub( string.lower( v ), "%s", "_" )
				popup[ btn ]:Disable()
			end
			popup.dd_class:Hide()
			popup.dd_spec:Hide()

			if has_access == false then
				popup.label_noaccess:Show()
			end
		end

		if has_access == nil then
			m.msg.check_channel_access( event.channelId )
		end
	end

	local function show( event_id )
		if not popup then
			popup = create_frame()
		end

		popup:Show()
		refresh( event_id )
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

	local function update( event_id )
		if popup and popup:IsVisible() then
			if event_id and event.id ~= event_id then
				return
			end
			refresh( event.id )
		end
	end

	local function online_status( online )
		if popup then
			if online then
				popup.indicator_tex:SetVertexColor( 0, 1, 0, .9 )
			else
				popup.indicator_tex:SetVertexColor( 1, 0, 0, .9 )
			end
		end
	end

	---@type EventPopup
	return {
		show = show,
		hide = hide,
		toggle = toggle,
		is_visible = is_visible,
		update = update,
		online_status = online_status,
	}
end

m.EventPopup = M
return M
