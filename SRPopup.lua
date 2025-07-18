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
	local sr_items = nil
	local frame_items = {}
	local rows = 10
	local gui = m.GuiElements

	local raids = {
		[ 94 ] = { "BWL", "Blackwing Lair", { "BWLRazorgore", "BWLVaelastrasz", "BWLLashlayer", "BWLFiremaw", "BWLEbonroc", "BWLFlamegor", "BWLChromaggus", "BWLNefarian", "BWLTrashMobs" } },
		[ 95 ] = { "MC", "Molten Core", { "MCLucifron", "MCMagmadar", "MCGehennas", "MCGarr", "MCShazzrah", "MCGeddon", "MCGolemagg", "MCSulfuron", "MCMajordomo", "MCRagnaros", "MCTrashMobs", "MCRANDOMBOSSDROPS" } },
		[ 96 ] = { "NAX", "Naxxramas", { "NAXPatchwerk", "NAXGrobbulus", "NAXGluth", "NAXThaddius", "NAXAnubRekhan", "NAXGrandWidowFaerlina", "NAXMaexxna", "NAXNoththePlaguebringer", "NAXHeigantheUnclean", "NAXLoatheb", "NAXInstructorRazuvious", "NAXGothiktheHarvester", "NAXTheFourHorsemen", "NAXSapphiron", "NAXKelThuzard", "NAXTrash" } },
		[ 97 ] = { "Onyxia", "Onyxias Lair", { "Onyxia" } },
		[ 98 ] = { "AQ20", "Ruins of Ahn'Qiraj", { "AQ20Kurinnaxx", "AQ20Andorov", "AQ20Rajaxx", "AQ20CAPTAIN", "AQ20Moam", "AQ20Buru", "AQ20Ayamiss", "AQ20Ossirian", "AQ20Trash", "AQ20ClassBooks", "AQ20Enchants" } },
		[ 99 ] = { "AQ40", "Temple of Ahn'Qiraj", { "AQ40Skeram", "AQ40Trio", "AQ40Sartura", "AQ40Fankriss", "AQ40Viscidus", "AQ40Huhuran", "AQ40Emperors", "AQ40Ouro", "AQ40CThun", "AQ40Trash1", "AQEnchants" } },
		[ 100 ] = { "ZG", "Zul Gurub", { "ZGJeklik", "ZGVenoxis", "ZGEnchants", "ZGMarli", "ZGMandokir", "ZGGrilek", "ZGHazzarah", "ZGRenataki", "ZGWushoolay", "ZGGahzranka", "ZGThekal", "ZGArlokk", "ZGJindo", "ZGHakkar", "ZGMuddyChurningWaters", "ZGJinxedHoodooPile", "ZGTrash1", "ZGShared" } },
		[ 101 ] = { "LKH", "Karazhan", { "LKHRolfen", "LKHBroodQueenAraxxna", "LKHGrizikil", "LKHClawlordHowlfang", "LKHLordBlackwaldII", "LKHMoroes", "LKHTrash", "LKHEnchants" } },
		[ 102 ] = { "ES", "Emerald Sanctum", { "ESErennius", "ESSolnius1", "ESHardMode", "ESTrash" } }
	}

	local atlas_classes = {
		[ 1 ] = "Druid",
		[ 2 ] = "Hunter",
		[ 3 ] = "Mage",
		[ 4 ] = "Paladin",
		[ 5 ] = "Priest",
		[ 6 ] = "Rogue",
		[ 7 ] = "Shaman",
		[ 8 ] = "Warlock",
		[ 9 ] = "Warrior"
	}

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

	---@param item_id number
	---@return string? name
	---@return string? texture
	---@return number? quality
	local function get_iteminfo_atlas( item_id )
		item_id = tonumber( item_id ) or 0
		if item_id == 0 then
			m.error( "Invalid itemID" )
			return nil, nil, nil
		end

		for _, v in ipairs( raids[ raid_id ][ 3 ] ) do
			---@diagnostic disable-next-line: undefined-global
			for _, item in ipairs( AtlasLoot_Data[ "AtlasLootItems" ][ v ] ) do
				if item[ 1 ] == tonumber( item_id ) then
					local tex = "Interface\\Icons\\" .. item[ 2 ]
					local quality, name = string.match( item[ 3 ], "=q(%d)=(.*)" )
					quality = tonumber( quality )
					if name and quality then
						name = (ITEM_QUALITY_COLORS[ quality ].hex) .. name .. "|r"
					end
					return name, tex, quality
				end
			end
		end

		return nil, nil, nil
	end

	---@param item_id number
	---@return string?
	local function get_itemlink_atlas( item_id )
		local name = get_iteminfo_atlas( item_id )
		if name then
			local color, item = string.match( name, "(|cff%x%x%x%x%x%x)(.-)|r" ) --, "%1[%2]|r")
			return string.format( "%s|Hitem:%d:0:0:0|h[%s]|h|r", color, item_id, item )
		end

		return nil
	end

	local function rollfor_update_minimap_icon()
		local result = _RollFor.softres_check.check_softres( true )

		if result == _RollFor.softres_check.ResultType.NoItemsFound then
			_RollFor.minimap_button.set_icon( _RollFor.minimap_button.ColorType.White )
		elseif result == _RollFor.softres_check.ResultType.SomeoneIsNotSoftRessing then
			_RollFor.minimap_button.set_icon( _RollFor.minimap_button.ColorType.Orange )
		elseif result == _RollFor.softres_check.ResultType.FoundOutdatedData then
			_RollFor.minimap_button.set_icon( _RollFor.minimap_button.ColorType.Red )
		else
			_RollFor.minimap_button.set_icon( _RollFor.minimap_button.ColorType.Green )
		end
	end

	local function export_to_rollfor()
		local sr = m.db.events[ event_id ].sr

		local rollfor = {
			metadata = {
				origin = "RaidCalendar",
				id = sr.reference,
				instance = raid_id,
				instances = { raids[ raid_id ][ 2 ] },
			},
			softreserves = {},
			hardreserves = {}
		}

		for _, res in ipairs( sr.reservations ) do
			local v = m.find( res.character.name, rollfor.softreserves, "name" )
			local _, _, quality = get_iteminfo_atlas( res.itemId )
			if v then
				table.insert( v.items, {
					id = res.itemId,
					sr_plus = res.srPlus,
					quality = quality or 1
				} )
			else
				table.insert( rollfor.softreserves, {
					name = res.character.name,
					items = {
						[ 1 ] = {
							id = res.itemId,
							sr_plus = res.srPlus,
							quality = quality or 1
						}
					}
				} )
			end
		end

		if RollFor and _RollFor then
			_RollFor.import_softres_data( rollfor )
			RollFor.pretty_print( "Soft-res data loaded successfully!" )
			rollfor_update_minimap_icon()

			local result = _RollFor.softres_check.check_softres()
			if result ~= _RollFor.softres_check.ResultType.NoItemsFound then
				_RollFor.dropped_loot_announce.reset()
			end
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
					local item_link = get_itemlink_atlas( frame.item_id )
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
			frame.item_id = item.itemId

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

			if class == "Swords" or class == "Maces" then
				class_label.set_icon( "Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes" )
				class_label.icon:SetTexCoord( unpack( gui.class_icons[ "ROGUE" ] ) )
			elseif class == "Bear" then
				class_label.set_icon( "Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes" )
				class_label.icon:SetTexCoord( unpack( gui.class_icons[ "DRUID" ] ) )
			else
				class_label.set_icon( gui.spec_icons[ m.capitalize_words( class ) ] )
				class_label.icon:SetTexCoord( 0, 1, 0, 1 )
			end

			local item_name, item_tex = get_iteminfo_atlas( item.itemId )
			if item_name and item_tex then
				item_label.set( item_name )
				item_label.set_icon( item_tex )
			else
				local name, _, quality, _, _, _, _, _, tex = GetItemInfo( item.itemId )
				if name then
					name = (ITEM_QUALITY_COLORS[ quality ].hex) .. name .. "|r"
					item_label.set( name )
					item_label.set_icon( tex )
				else
					item_label.set( "Unkown item" )
					item_label.set_icon( nil )
				end
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
					local item_link = get_itemlink_atlas( frame.item_id )
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
			frame.item_id = item.itemId
			frame.id = item.id

			local item_name, item_tex = get_iteminfo_atlas( item.itemId )

			if item_name and item_tex then
				icon:SetTexture( item_tex )
				label_item:SetText( item_name )
			else
				local name, _, quality, _, _, _, _, _, tex = GetItemInfo( item.itemId )
				if name then
					name = (ITEM_QUALITY_COLORS[ quality ].hex) .. name .. "|r"
					icon:SetTexture( tex )
					label_item:SetText( name )
				else
					icon:SetTexture( nil )
					label_item:SetText( "Unkown item" )
				end
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

		for k, v in specs[ m.player_class ] do
			table.insert( list, {
				value = v,
				text = v,
			} )
		end

		return list
	end

	local function sr_dropdown_item_tooltip()
		GameTooltip:SetOwner( this, "ANCHOR_RIGHT" )
		GameTooltip:SetHyperlink( string.format( "item:%d:0:0:0", this.value ) )
		GameTooltip:Show()
	end

	local function sort_sections_by_text( t )
		local sorted = {}
		local group = nil

		local function strip_color( text )
			return string.gsub( text, "|cff%x%x%x%x%x%x(.-)|r", "%1" )
		end

		for _, entry in ipairs( t ) do
			if entry.type == "header" then
				-- Finish and sort the previous group (if any)
				if group then
					table.sort( group, function( a, b )
						return string.lower( strip_color( a.text ) ) < string.lower( strip_color( b.text ) )
					end )
					for _, item in ipairs( group ) do
						table.insert( sorted, item )
					end
				end

				-- Add the new header and start a new group
				table.insert( sorted, entry )
				group = {}
			else
				if group then
					table.insert( group, entry )
				else
					-- Safety fallback: item before any header
					table.insert( sorted, entry )
				end
			end
		end

		-- Handle the final group
		if group then
			table.sort( group, function( a, b )
				return string.lower( strip_color( a.text ) ) < string.lower( strip_color( b.text ) )
			end )
			for _, item in ipairs( group ) do
				table.insert( sorted, item )
			end
		end

		return sorted
	end

	--
	-- SR Items dropdown
	--
	local function sr_dropdown_items()
		if not sr_items then
			sr_items = {}
			---@diagnostic disable-next-line: undefined-global
			if not (AtlasLoot_Data and AtlasLoot_Data[ "AtlasLootItems" ]) then
				m.error( "AtlasLoot is required for softres to work." )
				return
			end

			local shared = {}

			for _, v in raids[ raid_id ][ 3 ] do
				---@diagnostic disable-next-line: undefined-global
				local label = string.match( AtlasLoot_TableNames[ v ][ 1 ], "- (.*)" )

				table.insert( sr_items, {
					type = "header",
					text = label,
				} )

				---@diagnostic disable-next-line: undefined-global
				for _, item in pairs( AtlasLoot_Data[ "AtlasLootItems" ][ v ] ) do
					if item[ 1 ] and item[ 1 ] > 0
							and not string.find( item[ 4 ], "#m4#" ) then -- Don't show quest rewards
						--	and item[ 5 ] then -- Don't show items without drop chance

						local class_found = not string.find(item[ 4 ], "#c(%d)#")
						for class in string.gmatch( item[ 4 ], "#c(%d)#" ) do
							if atlas_classes[ tonumber( class ) ] == m.player_class then
								class_found = true
							end
						end

						if class_found then
							local _, i = m.find( item[ 1 ], sr_items, "value" )
							if i then
								table.remove( sr_items, i )
								if not m.find( item[ 1 ], shared, "value" ) then
									table.insert( shared, {
										value = item[ 1 ],
										text = get_iteminfo_atlas( item[ 1 ] ),
										icon = "Interface\\Icons\\" .. item[ 2 ],
										tooltip = sr_dropdown_item_tooltip
									} )
								end
							else
								table.insert( sr_items, {
									value = item[ 1 ],
									text = get_iteminfo_atlas( item[ 1 ] ),
									icon = "Interface\\Icons\\" .. item[ 2 ],
									tooltip = sr_dropdown_item_tooltip
								} )
							end
						end
					end
				end
			end
			if getn( shared ) > 0 then
				table.insert( sr_items, {
					type = "header",
					text = "Shared"
				} )
				for _, v in ipairs( shared ) do
					table.insert( sr_items, v )
				end
			end

			for _, item in pairs( m.db.events[ event_id ].sr.advancedHrItems ) do
				local sr_item, index = m.find( item.itemId, sr_items, "value" )
				if sr_item then
					sr_item.disabled = true
					sr_item.text = string.gsub( sr_item.text, "(|cff%x%x%x%x%x%x)", "|cffaaaaaa" )
					--table.remove( sr_items, index )
				end
			end

			sr_items = sort_sections_by_text( sr_items )
		end



		return sr_items
	end

	local function on_reserve_click()
		local spec = popup.dd_spec.selected
		local sr1 = popup.dd_sr1.selected
		local sr2 = popup.dd_sr2.selected

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
		---@class EventFrame: Frame
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
		frame.btn_refresh = m.GuiElements.tiny_button( frame, "R", "Refresh" )
		frame.btn_refresh:SetPoint( "TopRight", frame, "TopRight", -20, -4 )
		frame.btn_refresh:SetScript( "OnClick", function()
			frame.btn_refresh:Disable()
			m.msg.request_sr( m.db.events[ event_id ].srId )
		end )


		---@diagnostic disable-next-line: undefined-global
		if RollFor then
			frame.btn_export = m.GuiElements.tiny_button( frame, "E", "Export to RollFor" )
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
			dropdown_style = "classic",
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
			dropdown_style = "classic",
			label_on_select = "text",
			search = true,
			width = 200
		} )
		frame.dd_sr1:SetPoint( "Left", frame.label_sr1, "Right", 5, 0 )
		frame.dd_sr1:SetItems( sr_dropdown_items )

		frame.dd_sr2 = scroll_drop:New( border_reserve, {
			default_text = "Reserve item",
			dropdown_style = "classic",
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
		popup.btn_refresh:Enable()

		---@diagnostic disable-next-line: undefined-global
		local atlas = AtlasLoot_Data and AtlasLoot_Data[ "AtlasLootItems" ]

		if not m.db.events[ event_id ].sr or not atlas then
			popup.yoursr:SetText( "Please wait while SR data is loading..." )
			popup.dd_spec:Hide()
			popup.label_sr1:Hide()
			popup.dd_sr1:Hide()
			popup.label_sr2:Hide()
			popup.dd_sr2:Hide()
			popup.btn_reserve:Hide()

			if atlas then
				m.msg.request_sr( m.db.events[ event_id ].srId )
			else
				popup.yoursr:SetText( "AtlasLoot is required" )
				popup.btn_refresh:Disable()
			end
			return
		end

		sr_list = m.db.events[ event_id ].sr.reservations
		raid_id = m.db.events[ event_id ].sr.raidId
		sr_items = nil

		popup.titlebar.title:SetText( string.format( "SR for %s (%s)", m.db.events[ event_id ].title, raids[ raid_id ][ 2 ] ) )
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
			popup.dd_spec:SetSelected( m.db.user_settings.sr_specName, m.db.user_settings.sr_specName )
		end

		popup.dd_sr1:SetSelected( "Reserve item", nil )
		popup.dd_sr2:SetSelected( "Reserve item", nil )
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
