RaidCalendar = RaidCalendar or {}
---@class RaidCalendar
local m = RaidCalendar

if m.GuiElements then return end

---@class GuiElements
---@field tiny_button fun( parent: Frame, text: string?, tooltip: string?, color: table|string?, font-size: number? ): TinyButton
---@field create_button fun( parent: Frame, title: string, width: integer?, onclick: function, on_receive_drag: function? ): MyButton
---@field create_icon_label fun( parent: Frame, icon: string, width: integer?, icon_size: integer? ): IconLabelFrame
---@field pfui_skin fun( frame: Frame )
local M = {}

M.font_normal = CreateFont( "GIFontNormal" )
M.font_normal:SetFont( "Interface\\AddOns\\RaidCalendar\\assets\\Myriad-Pro.ttf", 12, "" )
M.font_normal:SetTextColor( NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b )

M.font_highlight = CreateFont( "GIFontHighlight" )
M.font_highlight:SetFont( "Interface\\AddOns\\RaidCalendar\\assets\\Myriad-Pro.ttf", 12, "" )
M.font_highlight:SetTextColor( HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b )

M.font_highlight_big = CreateFont( "GIFontHighlightBig" )
M.font_highlight_big:SetFont( "Interface\\AddOns\\RaidCalendar\\assets\\Myriad-Pro.ttf", 14, "" )
M.font_highlight_big:SetTextColor( HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b )

M.font_normal_small = CreateFont( "GIFontNormalSmall" )
M.font_normal_small:SetFont( "Interface\\AddOns\\RaidCalendar\\assets\\Myriad-Pro.ttf", 11, "" )

M.font_highlight_small = CreateFont( "GIFontHighlightSmall" )
M.font_highlight_small:SetFont( "Interface\\AddOns\\RaidCalendar\\assets\\Myriad-Pro.ttf", 11, "" )
M.font_highlight_small:SetTextColor( HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b )

M.class_icons = {
	WARRIOR = { 0, 0.246094, 0, 0.246094 },
	MAGE    = { 0.246094, 0.492188, 0, 0.246094 },
	ROGUE   = { 0.492188, 0.738281, 0, 0.246094 },
	DRUID   = { 0.738281, 0.972656, 0, 0.246094 },
	HUNTER  = { 0, 0.246094, 0.246094, 0.5 },
	SHAMAN  = { 0.246094, 0.492188, 0.246094, 0.5 },
	PRIEST  = { 0.492188, 0.738281, 0.246094, 0.5 },
	WARLOCK = { 0.738281, 0.972656, 0.246094, 0.5 },
	PALADIN = { 0, 0.246094, 0.5, 0.730469 },
}

M.spec_icons = {
	Restoration = "Interface\\Icons\\spell_nature_healingtouch",
	Restoration1 = "Interface\\Icons\\spell_nature_magicimmunity",
	Protection = "Interface\\Icons\\ability_warrior_defensivestance",
	Protection1 = "Interface\\AddOns\\RaidCalendar\\assets\\icon_shieldofthetemplar.tga",
	Combat = "Interface\\Icons\\ability_backstab",
	Arms = "Interface\\Icons\\ability_warrior_savageblow",
	Fury = "Interface\\Icons\\ability_warrior_innerrage",
	Fire = "Interface\\Icons\\spell_fire_firebolt02",
	Frost = "Interface\\Icons\\spell_frost_frostbolt02",
	Arcane = "Interface\\Icons\\inv_misc_rune_03",
	Affliction = "Interface\\Icons\\spell_shadow_deathcoil",
	Shadow = "Interface\\Icons\\spell_shadow_shadowwordpain",
	Subtlety = "Interface\\Icons\\ability_stealth",
	Marksmanship = "Interface\\AddOns\\RaidCalendar\\assets\\icon_marksmanship.tga",
	Holy = "Interface\\AddOns\\RaidCalendar\\assets\\icon_holy_guardianspirit.tga",
	Holy1 = "Interface\\Icons\\spell_holy_holybolt",
	Destruction = "Interface\\Icons\\spell_shadow_rainoffire",
	Elemental = "Interface\\Icons\\spell_nature_lightning",
	Smite = "Interface\\Icons\\spell_holy_holysmite",
	Demonology = "Interface\\Icons\\spell_shadow_metamorphosis",
	Survival = "Interface\\AddOns\\RaidCalendar\\assets\\icon_survival.tga",
	Guardian = "Interface\\Icons\\ability_racial_bearform",
	Retribution = "Interface\\Icons\\spell_holy_auraoflight",
	Beastmastery = "Interface\\AddOns\\RaidCalendar\\assets\\icon_beastmastery.tga",
	Discipline = "Interface\\Icons\\spell_holy_powerwordshield",
	Balance = "Interface\\Icons\\spell_nature_starfall",
	Enhancement = "Interface\\Icons\\spell_nature_lightningshield",
	Feral = "Interface\\Icons\\ability_druid_catform",
	Assassination = "Interface\\AddOns\\RaidCalendar\\assets\\icon_assassination.tga",
	Swords = "Interface\\Icons\\classicon_rogue",
	Dreamstate = "Interface\\AddOns\\RaidCalendar\\assets\\icon_dreamstate.tga"
}

---@param parent Frame
---@param text string?
---@param tooltip string?
---@param color string|table?
---@param font_size number?
---@return TinyButton
function M.tiny_button( parent, text, tooltip, color, font_size )
	local font_x, font_y
	font_size = font_size or 13
	---@class TinyButton: Button
	local button = CreateFrame( "Button", nil, parent )
	button.active = false
	if not text then text = 'X' end

	if type( color ) == "string" and color ~= "" then
		local str_color = color
		color = {}
		color.r, color.g, color.b, color.a = m.hex_to_rgba( str_color )
	end

	if m.pfui_skin_enabled then
		if not color then color = { r = 1, g = .25, b = .25 } end
		button:SetBackdrop( {
			bgFile = "Interface/Tooltips/UI-Tooltip-Background",
			edgeFile = "Interface\\Buttons\\WHITE8X8",
			tile = false,
			tileSize = 0,
			edgeSize = 0.5,
			insets = { left = 0, right = 0, top = 0, bottom = 0 }
		} )
		button:SetBackdropColor( 0, 0, 0, 1 )
		button:SetBackdropBorderColor( .2, .2, .2, 1 )
		button:SetHeight( 13 )
		button:SetWidth( 13 )
		button:SetText( text )
		button:SetPushedTextOffset( 0, 0 )

		if string.upper( text ) == text then
			font_x = text == "?" and -.5 or 0
			font_y = 0.5
			font_size = font_size or 10
		else
			font_x, font_y = -.5, 1.5
			font_size = font_size or 14
		end
	else
		if not color then color = { r = .9, g = .8, b = .25 } end
		button:SetWidth( 18 )
		button:SetHeight( 18 )

		button:SetHighlightTexture( "Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight" )
		if text == 'X' then
			button:SetNormalTexture( "Interface\\Buttons\\UI-Panel-MinimizeButton-Up" )
			button:SetPushedTexture( "Interface\\Buttons\\UI-Panel-MinimizeButton-Down" )
		else
			button:SetNormalTexture( "Interface\\AddOns\\RaidCalendar\\assets\\tiny-button-up.tga" )
			button:SetPushedTexture( "Interface\\AddOns\\RaidCalendar\\assets\\tiny-button-down.tga" )
		end
		button:GetHighlightTexture():SetTexCoord( .1875, .78125, .21875, .78125 )
		button:GetNormalTexture():SetTexCoord( .1875, .78125, .21875, .78125 )
		button:GetPushedTexture():SetTexCoord( .1875, .78125, .21875, .78125 )

		if text ~= 'X' then
			button:SetText( text )
			button:SetPushedTextOffset( -1.5, -1.5 )

			if string.upper( text ) == text then
				font_x, font_y = 0, 0
				font_size = font_size or 13
			else
				font_x, font_y = -1, 2
				font_size = font_size or 15
			end
		end
	end

	if m.pfui_skin_enabled or text ~= "X" then
		button:GetFontString():SetFont( "FONTS\\FRIZQT__.TTF", font_size, "" )
		button:GetFontString():SetTextColor( color.r, color.g, color.b, color.a or 1 )
		button:GetFontString():SetPoint( "Center", button, "Center", font_x, font_y )
	end

	button:SetScript( "OnEnter", function()
		local self = button
		self:SetBackdropBorderColor( color.r, color.g, color.b, color.a or 1 )
		if tooltip then
			GameTooltip:SetOwner( button, "ANCHOR_RIGHT" )
			GameTooltip:SetText( tooltip )
			GameTooltip:SetScale( 0.8 )
			GameTooltip:Show()
		end
	end )

	button:SetScript( "OnLeave", function()
		local self = button
		if not self.active and m.pfui_skin_enabled then
			self:SetBackdropBorderColor( .2, .2, .2, 1 )
		end
		if tooltip and GameTooltip:IsVisible() then
			GameTooltip:SetScale( 1 )
			GameTooltip:Hide()
		end
	end )

	local orig_disable = button.Disable
	function button:Disable()
		button:GetFontString():SetTextColor( 0.5, 0.5, 0.5, 0.5 )
		orig_disable( self )
	end

	local orig_enable = button.Enable
	function button:Enable()
		button:GetFontString():SetTextColor( color.r, color.g, color.b, color.a or 1 )
		orig_enable( self )
	end

	return button
end

---@param parent Frame
---@param title string
---@param width integer?
---@param on_click function
---@param on_receive_drag function?
---@return MyButton
function M.create_button( parent, title, width, on_click, on_receive_drag )
	---@class MyButton: Button
	local btn = CreateFrame( "Button", nil, parent, title == "Cancel" and nil or "UIPanelButtonTemplate" )
	btn:SetScript( "OnClick", on_click )
	btn:SetScript( "OnReceiveDrag", on_receive_drag )
	btn.title = title

	btn:SetWidth( width and width or 100 )
	btn:SetHeight( 24 )
	btn:SetText( title )

	btn.Disable = function()
		btn:EnableMouse( false )
		btn:GetFontString():SetTextColor( 0.5, 0.41, 0 )
		btn:GetNormalTexture():SetVertexColor( 0.5, 0.5, 0.5 )
	end

	btn.Enable = function()
		btn:EnableMouse( true )
		btn:GetFontString():SetTextColor( 1, 0.82, 0 )
		btn:GetNormalTexture():SetVertexColor( 1, 1, 1 )
	end

	return btn
end

---@param parent Frame
---@param icon string
---@param width integer?
---@param icon_size integer?
function M.create_icon_label( parent, icon, width, icon_size )
	---@class IconLabelFrame: Frame
	local frame = CreateFrame( "Frame", nil, parent )
	frame:SetWidth( width and width or 100 )
	frame:SetHeight( 16 )

	local icon_frame = CreateFrame( "Frame", nil, parent )
	--icon_frame:EnableMouse( false )
	icon_frame:SetWidth( icon_size and icon_size or 16 )
	icon_frame:SetHeight( icon_size and icon_size or 16 )
	icon_frame:SetPoint( "Left", frame, "Left", 0, 0 )
	icon_frame:SetScript( "OnEnter", function()
		if frame.icon_tooltip then
			GameTooltip:SetOwner( icon_frame, "ANCHOR_RIGHT" )
			GameTooltip:SetText( frame.icon_tooltip )
			GameTooltip:SetScale( 0.8 )
			GameTooltip:Show()
		end
	end )

	icon_frame:SetScript( "OnLeave", function()
		if frame.icon_tooltip and GameTooltip:IsVisible() then
			GameTooltip:SetScale( 1 )
			GameTooltip:Hide()
		end
	end )

	frame.icon = icon_frame:CreateTexture( nil, "ARTWORK" )
	frame.icon:SetTexture( icon )
	frame.icon:SetAllPoints( icon_frame )

	frame.count_frame = CreateFrame( "Frame", nil, frame )
	--frame.count_frame:EnableMouse( false )
	frame.count_frame:SetPoint( "Left", frame, "Left", 20, 0 )
	frame.count_frame:SetHeight( 10 )
	frame.count_frame:SetBackdrop( { bgFile = "Interface\\Buttons\\WHITE8X8" } )
	frame.count_frame:SetBackdropColor( 0, 0, 0, 1 )
	frame.count_frame:SetScript( "OnEnter", function()
		if frame.count_tooltip then
			GameTooltip:SetOwner( icon_frame, "ANCHOR_RIGHT" )
			GameTooltip:SetText( frame.count_tooltip )
			GameTooltip:SetScale( 0.8 )
			GameTooltip:Show()
		end
	end )

	frame.count_frame:SetScript( "OnLeave", function()
		if frame.count_tooltip and GameTooltip:IsVisible() then
			GameTooltip:SetScale( 1 )
			GameTooltip:Hide()
		end
	end )

	frame.count = frame.count_frame:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
	frame.count:SetPoint( "Left", frame.count_frame, "Left", 0, 0 )
	frame.count:SetTextColor( 1, 1, 1 )
	frame.count:SetJustifyH( "Left" )

	frame.label_frame = CreateFrame( "Frame", nil, frame )
	frame.label_frame:SetPoint( "Left", frame, "Left", 20, 0 )
	--frame.label_frame:EnableMouse( true )
	frame.label_frame:SetWidth( (width or 100) - 35 )
	frame.label_frame:SetHeight( 16 )

	frame.label_frame:SetScript( "OnEnter", function()
		if frame.label:GetStringWidth() > frame.label_frame:GetWidth() then
			GameTooltip:SetOwner( icon_frame, "ANCHOR_RIGHT" )
			GameTooltip:SetText( frame.label:GetText() or "" )
			GameTooltip:SetScale( 0.8 )
			GameTooltip:Show()
		end
	end )

	frame.label_frame:SetScript( "OnLeave", function()
		if GameTooltip:IsVisible() then
			GameTooltip:SetScale( 1 )
			GameTooltip:Hide()
		end
	end )

	frame.label = frame.label_frame:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
	frame.label:SetAllPoints( frame.label_frame )
	frame.label:SetNonSpaceWrap( false )
	frame.label:SetTextColor( 1, 1, 1 )
	frame.label:SetJustifyH( "Left" )

	frame.set = function( label, count, count_tooltip )
		if count and count > 0 then
			frame.count_frame:Show()
			frame.count:SetText( string.format( "%02d", count ) )
			local w = frame.count:GetStringWidth() + 1
			frame.count_frame:SetWidth( w )
			frame.label_frame:SetPoint( "Left", frame, "Left", 20 + w, 0 )
			frame.label_frame:SetWidth( (width or 100) - 35 )

			if count_tooltip then
				frame.count_frame:EnableMouse( true )
				frame.count_tooltip = count_tooltip
			else
				frame.count_frame:EnableMouse( false )
				frame.count_tooltip = nil
			end
		else
			frame.count_frame:Hide()
			frame.label_frame:SetPoint( "Left", frame, "Left", 20, 0 )
			frame.label_frame:SetWidth( (width or 100) - 20 )
		end

		frame.label:SetText( label )
		if frame.label:GetStringWidth() > frame.label_frame:GetWidth() then
			frame.label_frame:EnableMouse( true )
		else
			frame.label_frame:EnableMouse( false )
		end
	end

	---@param _icon string|nil
	---@param tooltip string?
	frame.set_icon = function( _icon, tooltip )
		frame.icon:SetTexture( _icon )
		if tooltip then
			icon_frame:EnableMouse( true )
			frame.icon_tooltip = tooltip
		else
			icon_frame:EnableMouse( false )
			frame.icon_tooltip = nil
		end
	end

	return frame
end

---@param parent BuilderFrame
---@param relative_region Region
---@return IndicatorFrame
function M.create_online_indicator( parent, relative_region )
	---@class IndicatorFrame: Frame
	local frame = CreateFrame( "Frame", nil, parent )
	frame:SetPoint( "Right", relative_region, "Left", -2, 0 )
	frame:SetWidth( 15 )
	frame:SetHeight( 15 )
	frame.is_online = false

	frame.texture = frame:CreateTexture( nil, "ARTWORK" )
	frame.texture:SetAllPoints( frame )
	frame.texture:SetTexture( "Interface\\TargetingFrame\\UI-TargetingFrame-AttackBackground" )
	frame.texture:SetVertexColor( 1, 1, 0, 1 )

	frame:EnableMouse( true )
	frame:SetScript( "OnEnter", function()
		GameTooltip:SetOwner( frame, "ANCHOR_RIGHT" )
		GameTooltip:SetText( string.format( "%s is %s", m.db.user_settings.bot_name or "Bot", frame.is_online and "online" or "offline" ) )
		GameTooltip:SetScale( 0.8 )
		GameTooltip:Show()
	end )

	frame:SetScript( "OnLeave", function()
		GameTooltip:SetScale( 1 )
		GameTooltip:Hide()
	end )

	frame.update = function()
		local r, g, b, a = m.bot_online_status()
		frame.texture:SetVertexColor( r, g, b, a )
		frame.is_online = r == 0
	end


	return frame
end

function M.create_rich_text_frame( parent )
	---@class RichTextFrame: Frame
	---@field SetRichText fun( self: RichTextFrame, text: string )
	local frame = CreateFrame( "Frame", nil, parent or UIParent )
	frame:SetWidth( 400 )
	frame:SetHeight( 300 )
	frame:SetPoint( "Center", parent, "Center", 0, 0 )

	-- Storage for text elements
	local textElements = {}
	local clickableElements = {}

	-- Clear all elements
	local function ClearElements()
		for _, element in ipairs( textElements ) do
			element:Hide()
		end
		for _, element in ipairs( clickableElements ) do
			element:Hide()
		end
		textElements = {}
		clickableElements = {}
	end

	-- Create a font string
	local function CreateFontString( text, font, color, x, y )
		local fs = frame:CreateFontString( nil, "OVERLAY", font or "GameFontNormal" )
		fs:SetText( text )
		fs:SetPoint( "TopLeft", frame, "TopLeft", x, y )
		if color then
			fs:SetTextColor( color.r, color.g, color.b )
		end
		table.insert( textElements, fs )
		return fs
	end

	-- Create a clickable button over text
	local function CreateClickableText( text, x, y, width, height, onClick )
		local button = CreateFrame( "Button", nil, frame )
		button:SetWidth( width )
		button:SetHeight( height )
		button:SetPoint( "TopLeft", frame, "TopLeft", x, y )
		button:SetScript( "OnClick", onClick )

		-- Visual feedback
		button:SetScript( "OnEnter", function( self )
			GameTooltip:SetOwner( self, "ANCHOR_RIGHT" )
			GameTooltip:SetText( "Click to open link" )
			GameTooltip:Show()
		end )
		button:SetScript( "OnLeave", function( self )
			GameTooltip:Hide()
		end )

		table.insert( clickableElements, button )
		return button
	end

	-- Parse and render rich text
	function frame:SetRichText( text )
		ClearElements()

		local lines = {}
		local currentLine = ""

		-- Split into lines
		local start = 1
		while start <= string.len(text) do
				local newlinePos = string.find(text, "\n", start)
				if newlinePos then
						local line = string.sub(text, start, newlinePos - 1)
						if line ~= "" then
								table.insert(lines, line)
						end
						start = newlinePos + 1
				else
						local line = string.sub(text, start)
						if line ~= "" then
								table.insert(lines, line)
						end
						break
				end
		end

		local yOffset = -10
		local lineHeight = 16

		for _, line in ipairs( lines ) do
			local xOffset = 10
			local parts = {}
			local remaining = line

			-- Parse the line for special formatting
			while remaining and remaining ~= "" do
				local beforeHeader, header, afterHeader = string.find( remaining, "(%*%*__(.-)__%*%*)" )
				local beforeURL, url, afterURL = string.find( remaining, "(https://raidres%.fly%.dev/res/([A-Z0-9a-z]+))" )

				local nextHeader = beforeHeader or math.huge
				local nextURL = beforeURL or math.huge

				if nextHeader < nextURL then
					-- Found header first
					if beforeHeader > 1 then
						-- Add text before header
						local beforeText = string.sub( remaining, 1, beforeHeader - 1 )
						table.insert( parts, { type = "text", content = beforeText } )
					end
					-- Add header
					if header then
						table.insert( parts, { type = "header", content = string.match( header, "__(.-)__" ) } )
						remaining = string.sub( remaining, afterHeader + 1 )
					end
				elseif nextURL < nextHeader then
					-- Found URL first
					if beforeURL > 1 then
						-- Add text before URL
						local beforeText = string.sub( remaining, 1, beforeURL - 1 )
						table.insert( parts, { type = "text", content = beforeText } )
					end
					-- Add URL
					if url then
						local urlId = string.match( url, "/res/([A-Z0-9a-z]+)" )
						table.insert( parts, { type = "url", content = url, id = urlId } )
					end
					remaining = string.sub( remaining, afterURL + 1 )
				else
					-- No more special formatting
					if remaining ~= "" then
						table.insert( parts, { type = "text", content = remaining } )
					end
					break
				end
			end

			-- Render the parts
			for _, part in ipairs( parts ) do
				if part.type == "text" then
					local fs = CreateFontString( part.content, "GameFontNormal", nil, xOffset, yOffset )
					xOffset = xOffset + fs:GetStringWidth()
				elseif part.type == "header" then
					local fs = CreateFontString( part.content, "GameFontNormalLarge", { r = 1, g = 1, b = 0 }, xOffset, yOffset )
					xOffset = xOffset + fs:GetStringWidth()
				elseif part.type == "url" then
					local linkText = "link"
					local fs = CreateFontString( linkText, "GameFontNormal", { r = 0.3, g = 0.7, b = 1 }, xOffset, yOffset )
					local width = fs:GetStringWidth()
				--	local height = fs:GetStringHeight()
					local height = 16 -- Fixed height for clickable area

					-- Create clickable area
					CreateClickableText( linkText, xOffset, yOffset - height, width, height, function()
						DEFAULT_CHAT_FRAME:AddMessage( "Opening raid SR: " .. part.id )
						-- Add your custom action here
						-- For example: OpenRaidSR(part.id)
					end )

					xOffset = xOffset + width
				end
			end

			yOffset = yOffset - lineHeight
		end
	end

	return frame
end

---@param frame BuilderFrame
function M.pfui_skin( frame )
	if not m.pfui_skin_enabled then return end

	local function skin_dropdown( dd )
		m.api.pfUI.api.StripTextures( dd )
		m.api.pfUI.api.CreateBackdrop( dd, nil, true )

		m.api.pfUI.api.SkinArrowButton( dd.dropdown_button, "down", 16 )
		dd.dropdown_button:SetPoint( "Right", dd, "Right", -4, 0 )
	end

	local name = frame:GetName()

	m.api.pfUI.api.StripTextures( frame, nil, "BACKGROUND" )
	m.api.pfUI.api.CreateBackdrop( frame, nil, true, 0.8 )
	frame.titlebar.bottom_border:SetTexture( nil )
	frame.titlebar.btn_close:SetPoint( "TopRight", frame.titlebar, "TopRight", -4, -3 )

	if name == "RaidCalendarPopup" then
		---@class CalendarFrame
		frame = frame

		frame.btn_refresh:SetPoint( "Right", frame.titlebar.btn_close, "Left", -4, 0 )
		frame.btn_settings:SetPoint( "Right", frame.btn_refresh, "Left", -4, 0 )

		m.api.pfUI.api.StripTextures( frame.border_events, nil, "BACKGROUND" )
		m.api.pfUI.api.CreateBackdrop( frame.border_events, nil, true )
		m.api.pfUI.api.SkinScrollbar( frame.scroll_bar )

		m.api.pfUI.api.StripTextures( frame.settings, nil, "BACKGROUND" )
		m.api.pfUI.api.CreateBackdrop( frame.settings, nil, true )

--		m.api.pfUI.api.SkinButton( frame.settings.btn_loopup )
--		frame.settings.btn_loopup:SetHeight( 22 )
		m.api.pfUI.api.SkinButton( frame.settings.btn_save )
		m.api.pfUI.api.SkinButton( frame.settings.btn_welcome )
		frame.settings.btn_save:SetHeight( 22 )
		frame.settings.btn_welcome:SetHeight( 22 )

		m.api.pfUI.api.SkinCheckbox( frame.settings.use_char_name )

		m.api.pfUI.api.StripTextures( frame.settings.discord, nil, "BACKGROUND" )
		m.api.pfUI.api.CreateBackdrop( frame.settings.discord, nil, true )

		skin_dropdown( frame.settings.time_format )
	end

	if name == "RaidCalendarEventPopup" then
		---@class EventFrame
		frame = frame
		local buttons = { "Signup", "Bench", "Late", "Tentative", "Absence", "Change Spec" }

		for _, v in buttons do
			local btn = "btn_" .. string.gsub( string.lower( v ), "%s", "_" )
			m.api.pfUI.api.SkinButton( frame[ btn ] )
		end

		frame.btn_invite:SetPoint( "Right", frame.titlebar.btn_close, "Left", -4, 0 )

		m.api.pfUI.api.SkinButton( frame.cs_change )
		m.api.pfUI.api.SkinButton( frame.cs_cancel )

		m.api.pfUI.api.StripTextures( frame.border_desc, nil, "BACKGROUND" )
		m.api.pfUI.api.CreateBackdrop( frame.border_desc, nil, true )
		m.api.pfUI.api.SkinScrollbar( frame.scroll_bar )

		m.api.pfUI.api.StripTextures( frame.attending, nil, "BACKGROUND" )
		m.api.pfUI.api.CreateBackdrop( frame.attending, nil, true )
		m.api.pfUI.api.StripTextures( frame.missing, nil, "BACKGROUND" )
		m.api.pfUI.api.CreateBackdrop( frame.missing, nil, true )

		skin_dropdown( frame.dd_spec )
		skin_dropdown( frame.dd_class )
	end

	if name == "RaidCalendarSRPopup" then
		---@class SRFrame
		frame = frame

		frame.btn_refresh:SetPoint( "Right", frame.titlebar.btn_close, "Left", -4, 0 )
		if frame.btn_export then
			frame.btn_export:SetPoint( "Right", frame.btn_refresh, "Left", -4, 0 )
		end

		m.api.pfUI.api.StripTextures( frame.border_reserve, nil, "BACKGROUND" )
		m.api.pfUI.api.CreateBackdrop( frame.border_reserve, nil, true )

		m.api.pfUI.api.StripTextures( frame.border_srlist, nil, "BACKGROUND" )
		m.api.pfUI.api.CreateBackdrop( frame.border_srlist, nil, true )
		m.api.pfUI.api.SkinScrollbar( frame.scroll_bar )

		m.api.pfUI.api.SkinButton( frame.btn_reserve )
		frame.btn_reserve:SetPoint( "BottomRight", frame.border_reserve, "BottomRight", -12, 14 )

		m.api.pfUI.api.StripTextures( frame.sr1, nil, "BACKGROUND" )
		m.api.pfUI.api.CreateBackdrop( frame.sr1, nil, true )
		m.api.pfUI.api.StripTextures( frame.sr2, nil, "BACKGROUND" )
		m.api.pfUI.api.CreateBackdrop( frame.sr2, nil, true )

		skin_dropdown( frame.dd_spec )
		skin_dropdown( frame.dd_sr1 )
		skin_dropdown( frame.dd_sr2 )
	end

	if name == "RaidCalendarWelcomePopup" then
		---@class WelcomeFrame
		frame = frame

		m.api.pfUI.api.SkinButton( frame.btn_verify )
		frame.btn_verify:SetHeight( 22 )
		m.api.pfUI.api.SkinButton( frame.btn_complete )

		m.api.pfUI.api.StripTextures( frame.input_discord, nil, "BACKGROUND" )
		m.api.pfUI.api.CreateBackdrop( frame.input_discord, nil, true )
	end
end

m.GuiElements = M

return M
