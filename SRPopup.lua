RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local m = RaidCalendar

if m.SRPopup then return end

---@class SRPopup
---@field show fun( event_id: string )
---@field hide fun()
---@field toggle fun( event_id: string )
---@field is_visible fun(): boolean
---@field update fun( event_id: string? )

local M = {}

---@type ScrollDropdown
local scroll_drop = LibStub:GetLibrary( "LibScrollDrop-1.3" )

function M.new()
	local popup
	local refresh
	local refresh_list
	local offset = 0
	local event_id
	local raid_id
	local sr_list
	local sr_items
	local frame_items = {}
	local rows = 10
	local gui = m.GuiElements

	local specs = {
		Druid = { "Balance", "Feral", "Restoration", "Bear" },
		Hunter = { "BeastMastery", "Marksmanship", "Survival" },
		Mage = { "Arcane", "Fire", "Frost" },
		Paladin = { "Holy", "Protection", "Retribution" },
		Priest = { "Discipline", "Holy", "Shadow" },
		Rogue = { "Sword", "Daggers", "Maces" },
		Shaman = { "Elemental", "Enhancement", "Restoration", "Tank" },
		Warlock = { "Affliction", "Demonology", "Destruction" },
		Warrior = { "Arms", "Fury", "Protection" }
	}

	local function save_position( self )
		local point, _, relative_point, x, y = self:GetPoint()

		m.db.popup_sr.position = {
			point = point,
			relative_point = relative_point,
			x = x,
			y = y
		}
	end

	---@param raidItemId number
	---@return string? name
	---@return string? texture
	---@return number? quality
	---@return number? itemId
	local function get_iteminfo( raidItemId )
		for _, item in ipairs( m.loot_table[ raid_id ].raidItems ) do
			if item.id == raidItemId then
				local icon = "Interface\\Icons\\" .. item.icon
				local name = ITEM_QUALITY_COLORS[ item.quality or 0 ].hex .. item.name .. "|r"

				return name, icon, item.quality, item.itemId
			end
		end

		return nil, nil, nil, nil
	end

	---@param raidItemId number
	---@return string?
	local function get_itemlink( raidItemId )
		for _, item in ipairs( m.loot_table[ raid_id ].raidItems ) do
			if item.id == raidItemId then
				return string.format( "%s|Hitem:%d:0:0:0|h[%s]|h|r", ITEM_QUALITY_COLORS[ item.quality or 0 ].hex, item.itemId, item.name )
			end
		end

		return nil
	end

	local function export_to_rollfor()
		if not RollFor and _RollFor then return end

		local sr = m.db.events[ event_id ].sr
		local rollfor_data = {
			metadata = {
				origin = "RaidCalendar",
				id = sr.reference,
				instance = raid_id,
				instances = { m.loot_table[ raid_id ].name },
			},
			softreserves = {},
			hardreserves = {}
		}

		for _, res in ipairs( sr.reservations ) do
			local v = m.find( res.character.name, rollfor_data.softreserves, "name" )
			local _, _, quality = get_iteminfo( res.raidItemId )
			if v then
				table.insert( v.items, {
					id = m.find( res.raidItemId, m.loot_table[ raid_id ].raidItems, "id" ).itemId,
					sr_plus = res.srPlus and res.srPlus > 0 and res.srPlus or nil,
					quality = quality or 1
				} )
			else
				table.insert( rollfor_data.softreserves, {
					name = res.character.name,
					items = {
						[ 1 ] = {
							id = m.find( res.raidItemId, m.loot_table[ raid_id ].raidItems, "id" ).itemId,
							sr_plus = res.srPlus and res.srPlus > 0 and res.srPlus or nil,
							quality = quality or 1
						}
					}
				} )
			end
		end

		math.huge = 1e99
		---@diagnostic disable-next-line: undefined-global
		local json = LibStub( "Json-0.1.2" )
		local success, json_data = pcall( function() return json.encode( rollfor_data ) end )
		if success then
			local softres_data = m.encode_base64( json_data )

			_RollFor.import_encoded_softres_data( softres_data, function()
				local softres_check = _RollFor.softres_check
				local result = softres_check.check_softres()

				if result ~= softres_check.ResultType.NoItemsFound then
					_RollFor.softres.persist( softres_data )
					_RollFor.dropped_loot_announce.reset()
					_RollFor.softres_gui.load( softres_data )
				end
			end )
		else
			m.error( "Encoding of SR data failed" )
		end
	end

	--
	-- Create SR list entry
	--
	local function create_entry( parent )
		---@class SREntryFrame: Button
		local frame = m.FrameBuilder.new()
				:type( "Button" )
				:parent( parent )
				:frame_style( "NONE" )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0.1, 0.1, 0.1, 1 )
				:point( "Left", parent, "Left", 4, 0 )
				:width( 485 )
				:height( 20 )
				:build()

		local player_label = frame:CreateFontString( nil, "ARTWORK", "GIFontHighlight" )
		player_label:SetPoint( "TopLeft", frame, "TopLeft", 3, -2 )
		player_label:SetHeight( 16 )
		player_label:SetJustifyH( "Left" )

		local comment_icon = CreateFrame( "Button", nil, frame )
		comment_icon:SetPoint( "Left", player_label, "Right", 5, 0 )
		comment_icon:SetWidth( 12 )
		comment_icon:SetHeight( 12 )
		comment_icon:SetNormalTexture( "Interface\\AddOns\\RaidCalendar\\assets\\icon_comment.tga" )

		comment_icon:SetScript( "OnEnter", function()
			local comment = sr_list[ frame.index ].comment
			GameTooltip:SetOwner( comment_icon, "ANCHOR_RIGHT" )
			GameTooltip:SetText( comment )
			GameTooltip:Show()
		end )

		comment_icon:SetScript( "OnLeave", function()
			if GameTooltip:IsVisible() then
				GameTooltip:Hide()
			end
		end )

		local class_label = gui.create_icon_label( frame, "", 100, 14 )
		class_label:SetPoint( "Left", frame, "Left", 105, 0 )

		local item_label = gui.create_icon_label( frame, "", 200, 14 )
		item_label:SetPoint( "Left", class_label, "Right", 5, 0 )
		item_label:EnableMouse( true )

		local sr_label = frame:CreateFontString( nil, "ARTWORK", "GIFontHighlight" )
		sr_label:SetPoint( "Right", frame, "Right", -5, 0 )
		sr_label:SetJustifyH( "Left" )

		item_label:SetScript( "OnMouseDown", function()
			if m.api.IsShiftKeyDown() then
				if m.api.ChatFrameEditBox:IsVisible() then
					local item_link = get_itemlink( frame.raid_item_id )
					m.api.ChatFrameEditBox:Insert( item_link )
				end
			end
		end )

		item_label:SetScript( "OnEnter", function()
			GameTooltip:SetOwner( item_label, "ANCHOR_RIGHT" )
			GameTooltip:SetHyperlink( string.format( "item:%d:0:0:0", frame.item_id ) )
			GameTooltip:Show()
		end )

		item_label:SetScript( "OnLeave", function()
			if GameTooltip:IsVisible() then
				GameTooltip:Hide()
			end
		end )

		frame.set_item = function( index )
			local item = sr_list[ index ]
			frame.index = index
			frame.raid_item_id = item.raidItemId

			if mod( index, 2 ) == 0 then
				frame:SetBackdropColor( 0.15, 0.15, 0.15, 1 )
			else
				frame:SetBackdropColor( 0.08, 0.08, 0.08, 1 )
			end

			if item.comment then
				comment_icon:Show()
			else
				comment_icon:Hide()
			end

			player_label:SetText( item.character.name )
			sr_label:SetText( (item.srPlus and item.srPlus > 0) and ("+" .. tostring( item.srPlus )) or "" )

			local class = string.sub( item.character.specialization, string.find( item.character.specialization, "%u", 2 ) or 0 )
			class_label.set( class )

			if class == "Swords" or class == "Maces" or class == "Daggers" then
				class_label.set_icon( "Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes" )
				class_label.icon:SetTexCoord( unpack( gui.class_icons[ "ROGUE" ] ) )
			elseif class == "Bear" then
				class_label.set_icon( "Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes" )
				class_label.icon:SetTexCoord( unpack( gui.class_icons[ "DRUID" ] ) )
			else
				class_label.set_icon( gui.spec_icons[ m.capitalize_words( class ) ] )
				class_label.icon:SetTexCoord( 0, 1, 0, 1 )
			end

			local item_name, item_tex, _, item_id = get_iteminfo( item.raidItemId )
			frame.item_id = item_id
			if item_name and item_tex then
				item_label.set( item_name )
				item_label.set_icon( item_tex )
				--[[			else
				local name, _, quality, _, _, _, _, _, tex = GetItemInfo( item.itemId )
				if name then
					name = (ITEM_QUALITY_COLORS[ quality ].hex) .. name .. "|r"
					item_label.set( name )
					item_label.set_icon( tex )
				else
					item_label.set( "Unkown item" )
					item_label.set_icon( nil )
				end]]
			end

			local w = item_label.label:GetStringWidth()
			item_label:SetWidth( w + 22 )

			frame:Show()
		end

		return frame
	end

	--
	-- Create personal SR item
	--
	local function create_sr_item( parent )
		---@class SRItem : Frame
		local frame = m.FrameBuilder.new()
				:type( "Button" )
				:parent( parent )
				:frame_style( "TOOLTIP" )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0.1, 0.1, 0.1, 1 )
				:width( 38 )
				:height( 38 )
				:build()

		local icon = frame:CreateTexture( nil, "ARTWORK" )
		icon:SetPoint( "TopLeft", frame, "TopLeft", 3, -3 )
		icon:SetWidth( 32 )
		icon:SetHeight( 32 )

		local label_item = frame:CreateFontString( nil, "ARTWORK", "GIFontHighlight" )
		label_item:SetPoint( "Left", icon, "Right", 5, 0 )

		local btn_remove = CreateFrame( "Button", nil, frame )
		btn_remove:SetPoint( "TopRight", frame, "TopRight", -1, -1 )
		btn_remove:SetWidth( 16 )
		btn_remove:SetHeight( 16 )
		btn_remove:SetNormalTexture( "Interface\\Buttons\\UI-Panel-MinimizeButton-Up" )
		btn_remove:SetPushedTexture( "Interface\\Buttons\\UI-Panel-MinimizeButton-Down" )
		btn_remove:SetHighlightTexture( "Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight" )
		btn_remove:SetScript( "OnClick", function()
			btn_remove:Disable()
			m.msg.delete_sr( frame.id )
		end )

		frame:SetScript( "OnMouseDown", function()
			if m.api.IsShiftKeyDown() then
				if m.api.ChatFrameEditBox:IsVisible() then
					local item_link = get_itemlink( frame.raid_item_id )
					m.api.ChatFrameEditBox:Insert( item_link )
				end
			end
		end )

		frame:SetScript( "OnEnter", function()
			GameTooltip:SetOwner( frame, "ANCHOR_RIGHT" )
			GameTooltip:SetHyperlink( string.format( "item:%d:0:0:0", frame.item_id ) )
			GameTooltip:Show()
		end )

		frame:SetScript( "OnLeave", function()
			if GameTooltip:IsVisible() then
				GameTooltip:Hide()
			end
		end )

		frame.set_item = function( item )
			local item_name, item_tex, _, item_id = get_iteminfo( item.raidItemId )

			frame.item_id = item_id
			frame.raid_item_id = item.raidItemId
			frame.id = item.id

			if item_name and item_tex then
				icon:SetTexture( item_tex )
				label_item:SetText( item_name )
				--[[else
				local name, _, quality, _, _, _, _, _, tex = GetItemInfo( item.itemId )
				if name then
					name = (ITEM_QUALITY_COLORS[ quality ].hex) .. name .. "|r"
					icon:SetTexture( tex )
					label_item:SetText( name )
				else
					icon:SetTexture( nil )
					label_item:SetText( "Unkown item" )
				end]]
			end

			btn_remove:Enable()
			local w = label_item:GetStringWidth()
			frame:SetWidth( w + 60 )
			frame:Show()
		end

		return frame
	end

	local function sr_dropdown_specs()
		local list = {}

		for _, v in specs[ m.player_class ] do
			table.insert( list, {
				value = v,
				text = v,
			} )
		end

		return list
	end

	local function sr_dropdown_item_tooltip( self )
		GameTooltip:SetOwner( self, "ANCHOR_RIGHT" )
		GameTooltip:SetHyperlink( string.format( "item:%d:0:0:0", self.value ) )
		GameTooltip:Show()
	end

	--
	-- SR Items dropdown
	--
	local function sr_dropdown_items()
		if not sr_items then
			local raid = m.loot_table[ raid_id ]
			local bosses = {}
			local boss_lookup = {}
			sr_items = {}

			-- Build boss lookup by ID
			if raid.raidBosses then
				for _, boss in ipairs( raid.raidBosses ) do
					boss_lookup[ boss.id ] = boss
					table.insert( bosses, boss )
				end
				table.sort( bosses, function( a, b )
					return (a.position or 9999) < (b.position or 9999)
				end )
			end

			local items_by_boss = {}
			local shared_items = {}
			local ungrouped_items = {}

			for _, item in ipairs( raid.raidItems or {} ) do
				if not item.classes or m.find( m.player_class, item.classes ) then
					local boss_refs = item.raidBosses

					if type( boss_refs ) == "table" then
						local boss_count = getn( boss_refs )

						if boss_count > 1 then
							table.insert( shared_items, item )
						elseif boss_count == 1 then
							local boss_id = boss_refs[ 1 ]
							if boss_lookup[ boss_id ] then
								items_by_boss[ boss_id ] = items_by_boss[ boss_id ] or {}
								table.insert( items_by_boss[ boss_id ], item )
							else
								table.insert( ungrouped_items, item )
							end
						else
							table.insert( ungrouped_items, item )
						end
					else
						table.insert( ungrouped_items, item )
					end
				end
			end

			local function sort_by_name( tbl )
				table.sort( tbl, function( a, b )
					return string.lower( a.name or "" ) < string.lower( b.name or "" )
				end )
			end

			-- Add grouped items by boss
			for _, boss in ipairs( bosses ) do
				local items = items_by_boss[ boss.id ]
				if items then
					sort_by_name( items )
					table.insert( sr_items, {
						type = "header",
						text = boss.name,
					} )
					for _, item in ipairs( items ) do
						table.insert( sr_items, {
							value = item.itemId,
							text = m.get_item_name_colorized( item.name, item.quality ),
							icon = "Interface\\Icons\\" .. item.icon,
							raid_item_id = item.id,
							tooltip = sr_dropdown_item_tooltip
						} )
					end
				end
			end

			-- Add shared items
			if getn( shared_items ) > 0 then
				sort_by_name( shared_items )
				table.insert( sr_items, {
					type = "header",
					text = "Shared",
				} )
				for _, item in ipairs( shared_items ) do
					table.insert( sr_items, {
						value = item.itemId,
						text = m.get_item_name_colorized( item.name, item.quality ),
						icon = "Interface\\Icons\\" .. item.icon,
						raid_item_id = item.id,
						tooltip = sr_dropdown_item_tooltip
					} )
				end
			end

			-- Add ungrouped items
			if getn( ungrouped_items ) > 0 then
				sort_by_name( ungrouped_items )
				table.insert( sr_items, {
					type = "header",
					text = "Other Items",
				} )
				for _, item in ipairs( ungrouped_items ) do
					table.insert( sr_items, {
						value = item.itemId,
						text = m.get_item_name_colorized( item.name, item.quality ),
						icon = "Interface\\Icons\\" .. item.icon,
						raid_item_id = item.id,
						tooltip = sr_dropdown_item_tooltip
					} )
				end
			end

			-- Disable HR items
			for _, item in pairs( m.db.events[ event_id ].sr.advancedHrItems ) do
				local sr_item = m.find( item.itemId, sr_items, "value" )
				if sr_item then
					sr_item.disabled = true
					sr_item.text = string.gsub( sr_item.text, "(|cff%x%x%x%x%x%x)", "|cffaaaaaa" )
				end
			end
		end

		return sr_items
	end

	local function on_reserve_click()
		local spec = popup.dd_spec.selected
		local sr1 = popup.dd_sr1:GetSelected() and popup.dd_sr1:GetSelected().raid_item_id
		local sr2 = popup.dd_sr2:GetSelected() and popup.dd_sr2:GetSelected().raid_item_id

		if not spec then
			m.error( "No specialization selected" )
			return
		end

		if not (sr1 or sr2) then
			m.error( "No items reserved" )
			return
		end

		m.db.user_settings.sr_specName = spec
		m.msg.add_sr( raid_id, m.db.events[ event_id ].sr.reference, sr1, sr2 )
		this:Disable()
		popup.label_sr1:Hide()
		popup.dd_sr1:Hide()
		popup.label_sr2:Hide()
		popup.dd_sr2:Hide()
	end

	--
	-- Create main frame
	--
	local function create_frame()
		---@class SRFrame: BuilderFrame
		local frame = m.FrameBuilder.new()
				:name( "RaidCalendarSRPopup" )
				:title( string.format( "Raid Calendar v%s", m.version ) )
				:frame_style( "TOOLTIP" )
				:frame_level( 120 )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0, 0, 0, 0.9 )
				:close_button()
				:width( 530 )
				:height( 358 )
				:movable()
				:esc()
				:hidden()
				:on_drag_stop( save_position )
				:build()

		if m.db.popup_sr.position then
			local p = m.db.popup_sr.position
			frame:ClearAllPoints()
			frame:SetPoint( p.point, UIParent, p.relative_point, p.x, p.y )
		end

		---@type Frame
		local border_reserve = m.FrameBuilder.new()
				:parent( frame )
				:point( "TopLeft", frame, "TopLeft", 10, -32 )
				:point( "BottomRight", frame, "TopRight", -10, -132 )
				:frame_style( "TOOLTIP" )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0.08, 0.08, 0.08, 1 )
				:build()
		frame.border_reserve = border_reserve

		--
		-- Titlebar buttons
		--
		frame.btn_refresh = m.GuiElements.tiny_button( frame, "R", "Refresh", "#20F99F" )
		frame.btn_refresh:SetPoint( "Right", frame.titlebar.btn_close, "Left", 2, 0 )
		frame.btn_refresh:SetScript( "OnClick", function()
			frame.btn_refresh:Disable()
			m.msg.request_sr( m.db.events[ event_id ].srId )
			if not m.debug_enabled or m.db.events[ event_id ].leaderId == m.db.user_settings.discord_id then
				m.ace_timer.ScheduleTimer( M, function()
					frame.btn_refresh:Enable()
				end, 60 * 5 )
			end
		end )

		---@diagnostic disable-next-line: undefined-global
		if RollFor then
			frame.btn_export = m.GuiElements.tiny_button( frame, "E", "Export to RollFor", "#209FF9" )
			frame.btn_export:SetPoint( "Right", frame.btn_refresh, "Left", 2, 0 )
			frame.btn_export:SetScript( "OnClick", export_to_rollfor )
		end

		--
		-- Main content
		--
		local label_yoursr = border_reserve:CreateFontString( nil, "ARTWORK", "GIFontHighlight" )
		label_yoursr:SetPoint( "TopLeft", border_reserve, "TopLeft", 10, -10 )
		label_yoursr:SetText( "Your reservations (0/0)" )
		frame.yoursr = label_yoursr

		frame.sr1 = create_sr_item( border_reserve )
		frame.sr1:SetPoint( "TopLeft", border_reserve, "TopLeft", 10, -30 )

		frame.sr2 = create_sr_item( border_reserve )
		frame.sr2:SetPoint( "TopLeft", frame.sr1, "TopRight", 0, 0 )

		frame.dd_spec = scroll_drop:New( border_reserve, {
			default_text = "Select spec",
			dropdown_style = m.pfui_skin_enabled and "pfui" or "classic",
			label_on_select = "text",
			search = false,
			width = 120
		} )
		frame.dd_spec:SetPoint( "TopLeft", border_reserve, "TopLeft", 10, -30 )
		frame.dd_spec:SetItems( sr_dropdown_specs )

		frame.label_sr1 = border_reserve:CreateFontString( nil, "ARTWORK", "GIFontHighlight" )
		frame.label_sr1:SetPoint( "TopLeft", border_reserve, "TopLeft", 140, -36 )
		frame.label_sr1:SetWidth( 30 )
		frame.label_sr1:SetText( "SR 1" )

		frame.label_sr2 = border_reserve:CreateFontString( nil, "ARTWORK", "GIFontHighlight" )
		frame.label_sr2:SetPoint( "TopLeft", frame.label_sr1, "BottomLeft", 0, -20 )
		frame.label_sr2:SetWidth( 30 )
		frame.label_sr2:SetText( "SR 2" )

		frame.dd_sr1 = scroll_drop:New( border_reserve, {
			default_text = "Reserve item",
			dropdown_style = m.pfui_skin_enabled and "pfui" or "classic",
			label_on_select = "text",
			search = true,
			width = 200,
			max_visible = 15,
		} )
		frame.dd_sr1:SetPoint( "Left", frame.label_sr1, "Right", 5, 0 )
		frame.dd_sr1:SetItems( sr_dropdown_items )

		frame.dd_sr2 = scroll_drop:New( border_reserve, {
			default_text = "Reserve item",
			dropdown_style = m.pfui_skin_enabled and "pfui" or "classic",
			label_on_select = "text",
			search = true,
			width = 200
		} )
		frame.dd_sr2:SetPoint( "Left", frame.label_sr2, "Right", 5, 0 )
		frame.dd_sr2:SetItems( sr_dropdown_items )

		frame.btn_reserve = gui.create_button( border_reserve, "Reserve", nil, on_reserve_click )
		frame.btn_reserve:SetPoint( "BottomRight", border_reserve, "BottomRight", -10, 14 )

		local border_srlist = m.FrameBuilder.new()
				:parent( frame )
				:point( "TopLeft", border_reserve, "BottomLeft", 0, -7 )
				:point( "BottomRight", frame, "BottomRight", -10, 10 )
				:frame_style( "TOOLTIP" )
				:backdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
				:backdrop_color( 0, 0, 0, 0.5 )
				:build()

		border_srlist:EnableMouseWheel( true )
		border_srlist:SetScript( "OnMouseWheel", function()
			local value = frame.scroll_bar:GetValue() - arg1
			frame.scroll_bar:SetValue( value )
		end )
		frame.border_srlist = border_srlist

		local scroll_bar = CreateFrame( "Slider", "RaidCalendarSRScrollBar", border_srlist, "UIPanelScrollBarTemplate" )
		frame.scroll_bar = scroll_bar
		scroll_bar:SetPoint( "TopRight", border_srlist, "TopRight", -5, -20 )
		scroll_bar:SetPoint( "Bottom", border_srlist, "Bottom", 0, 20 )
		scroll_bar:SetMinMaxValues( 0, 0 )
		scroll_bar:SetValueStep( 1 )
		scroll_bar:SetScript( "OnValueChanged", function()
			offset = arg1
			refresh_list()
		end )

		for i = 1, rows do
			local item = create_entry( border_srlist )
			item:SetPoint( "Top", border_srlist, "Top", 4, ((i - 1) * -20) - 4 )
			item:Hide()
			table.insert( frame_items, item )
		end

		gui.pfui_skin( frame )
		return frame
	end

	--
	-- Refresh list
	--
	function refresh_list()
		for i = 1, rows do
			if sr_list[ i ] then
				frame_items[ i ].set_item( i + offset )
			else
				frame_items[ i ]:Hide()
			end
		end

		local max = math.max( 0, getn( sr_list ) - rows )
		local value = math.min( max, popup.scroll_bar:GetValue() )

		popup.scroll_bar:SetMinMaxValues( 0, max )
		popup.scroll_bar:SetValue( value )
		if value == 0 then
			m.api[ "RaidCalendarSRScrollBarScrollUpButton" ]:Disable()
		else
			m.api[ "RaidCalendarSRScrollBarScrollUpButton" ]:Enable()
		end

		if value == max then
			m.api[ "RaidCalendarSRScrollBarScrollDownButton" ]:Disable()
		else
			m.api[ "RaidCalendarSRScrollBarScrollDownButton" ]:Enable()
		end
	end

	--
	-- Refresh
	--
	function refresh( refresh_data )
		popup.sr1:Hide()
		popup.sr2:Hide()
		if m.debug_enabled or m.db.events[ event_id ].leaderId == m.db.user_settings.discord_id then popup.btn_refresh:Enable() end

		if not m.db.events[ event_id ].sr then
			popup.yoursr:SetText( "Please wait while SR data is loading..." )
			popup.dd_spec:Hide()
			popup.label_sr1:Hide()
			popup.dd_sr1:Hide()
			popup.label_sr2:Hide()
			popup.dd_sr2:Hide()
			popup.btn_reserve:Hide()

			m.msg.request_sr( m.db.events[ event_id ].srId )
			return
		end

		sr_list = m.db.events[ event_id ].sr.reservations
		raid_id = m.db.events[ event_id ].sr.raidId
		sr_items = nil

		popup.titlebar.title:SetText( string.format( "SR for %s (%s)", m.db.events[ event_id ].title, m.loot_table[ raid_id ].name ) )
		--
		-- Get personal reservations
		--
		local sr_limit = m.db.events[ event_id ].sr.reservationLimit
		local sr_count = 0

		for _, res in ipairs( sr_list ) do
			if res.character.name == m.player then
				sr_count = sr_count + 1
				popup[ "sr" .. sr_count ].set_item( res )
			end
		end

		popup.yoursr:SetText( string.format( "Your reservations (%d/%d)", sr_count, sr_limit ) )
		if m.db.user_settings.sr_specName then
			popup.dd_spec:SetSelected( m.db.user_settings.sr_specName )
		end

		popup.dd_sr1:SetText( "Reserve item" )
		popup.dd_sr2:SetText( "Reserve item" )
		if sr_count < sr_limit then
			popup.label_sr1:Show()
			popup.dd_sr1:Show()
			popup.btn_reserve:Show()
			popup.btn_reserve:Enable()

			if sr_limit > 1 and sr_count == 1 or sr_limit == 1 then
				if sr_limit == 1 then
					popup.dd_spec:Show()
				else
					popup.dd_spec:Hide()
				end
				popup.label_sr2:Hide()
				popup.dd_sr2:Hide()
				popup.label_sr1:SetPoint( "TopLeft", popup.border_reserve, "TopLeft", 263, -36 )
				popup.label_sr1:SetText( "SR " .. sr_limit )
			else
				popup.dd_spec:Show()
				popup.label_sr2:Show()
				popup.dd_sr2:Show()
				popup.label_sr1:SetPoint( "TopLeft", popup.border_reserve, "TopLeft", 140, -36 )
				popup.label_sr1:SetText( "SR 1" )
			end
		else
			popup.dd_spec:Hide()
			popup.label_sr1:Hide()
			popup.dd_sr1:Hide()
			popup.label_sr2:Hide()
			popup.dd_sr2:Hide()
			popup.btn_reserve:Hide()
		end

		refresh_list()
	end

	local function show( _event_id )
		event_id = _event_id
		if m.db.events[ event_id ].srId then
			if not popup then
				popup = create_frame()
			end
			popup:Show()
			offset = 0
			refresh()
		end
	end

	local function hide()
		if popup then
			popup:Hide()
		end
	end

	local function toggle( _event_id )
		if popup and popup:IsVisible() and _event_id == event_id then
			popup:Hide()
		else
			show( _event_id )
		end
	end

	local function is_visible()
		return popup and popup:IsVisible() or false
	end

	local function update( _event_id )
		if popup and popup:IsVisible() then
			if _event_id and _event_id ~= event_id then
				return
			end
			offset = 0
			refresh()
		end
	end

	---@type SRPopup
	return {
		show = show,
		hide = hide,
		toggle = toggle,
		is_visible = is_visible,
		update = update
	}
end

m.SRPopup = M
return M
