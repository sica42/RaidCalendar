RaidCalendar = RaidCalendar or {}
---@class RaidCalendar
local m = RaidCalendar

if m.GuiElements then return end

---@class GuiElements
---@field tiny_button fun( parent: Frame, text: string?, tooltip: string?, color: table|string?, font-size: number? ): TinyButton
---@field create_button fun( parent: Frame, title: string, width: integer?, onclick: function, on_receive_drag: function? ): MyButton
---@field create_icon_label fun( parent: Frame, icon: string, width: integer?, icon_size: integer? ): IconLabelFrame
local M = {}

M.font_normal = CreateFont( "GIFontNormal" )
M.font_normal:SetFont( "Interface\\AddOns\\RaidCalendar\assets\\Myriad-Pro.ttf", 12, "" )
M.font_normal:SetTextColor( NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b )

M.font_highlight = CreateFont( "GIFontHighlight" )
M.font_highlight:SetFont( "Interface\\AddOns\\RaidCalendar\\assets\\Myriad-Pro.ttf", 12, "" )
M.font_highlight:SetTextColor( HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b )

M.font_normal_small = CreateFont( "GIFontNormalSmall" )
M.font_normal_small:SetFont( "Interface\\AddOns\\RaidCalendar\\assets\\Myriad-Pro.ttf", 11, "" )

M.font_highlight_small = CreateFont( "GIFontHighlightSmall" )
M.font_highlight_small:SetFont( "Interface\\AddOns\\RaidCalendar\\assets\\Myriad-Pro.ttf", 11, "" )
M.font_highlight_small:SetTextColor( HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b )

---@param parent Frame
---@param text string?
---@param tooltip string?
---@param color string|table?
---@param font_size number?
---@return TinyButton
function M.tiny_button( parent, text, tooltip, color, font_size )
	---@class TinyButton: Button
	local button = CreateFrame( "Button", nil, parent )
	button.active = false
	if not text then text = 'X' end

	if type( color ) == "string" and color ~= "" then
		local str_color = color
		color = {}
		color.r, color.g, color.b, color.a = m.hex_to_rgba( str_color )
	end


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
		local font_x, font_y

		button:SetText( text )
		button:SetPushedTextOffset( -1.5, -1.5 )

		if string.upper( text ) == text then
			font_x, font_y = 0, 0
			font_size = font_size or 13
		else
			font_x, font_y = -1, 2
			font_size = font_size or 15
		end

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
		if tooltip and GameTooltip:IsVisible() then
			GameTooltip:SetScale( 1 )
			GameTooltip:Hide()
		end
	end )

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

	frame.icon = frame:CreateTexture( nil, "ARTWORK" )
	frame.icon:SetTexture( icon )
	frame.icon:SetWidth( icon_size and icon_size or 16 )
	frame.icon:SetHeight( icon_size and icon_size or 16 )
	frame.icon:SetPoint( "Left", frame, "Left", 0, 0 )

	frame.count_frame = CreateFrame( "Frame", nil, frame )
	frame.count_frame:SetPoint( "Left", frame, "Left", 20, 0 )
	frame.count_frame:SetHeight( 10 )
	frame.count_frame:SetBackdrop( { bgFile = "Interface\\Buttons\\WHITE8X8" } )
	frame.count_frame:SetBackdropColor( 0, 0, 0, 1 )

	frame.count = frame.count_frame:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
	frame.count:SetPoint( "Left", frame.count_frame, "Left", 0, 0 )
	frame.count:SetTextColor( 1, 1, 1 )
	frame.count:SetJustifyH( "Left" )

	frame.label = frame:CreateFontString( nil, "ARTWORK", "GIFontNormal" )
	frame.label:SetPoint( "Left", frame, "Left", 20, 0 )
	frame.label:SetWidth( (width or 100) - 35 )
	frame.label:SetHeight(16 )
	frame.label:SetNonSpaceWrap(false)
	frame.label:SetTextColor( 1, 1, 1 )
	frame.label:SetJustifyH( "Left" )

	frame.set = function( label, count )
		if count and count > 0 then
			frame.count_frame:Show()
			frame.count:SetText( string.format( "%02d", count ) )
			local w = frame.count:GetStringWidth() + 1
			frame.count_frame:SetWidth( w )
			frame.label:SetPoint( "Left", frame, "Left", 20 + w, 0 )
			frame.label:SetWidth( (width or 100) - 35 )
		else
			frame.count_frame:Hide()
			frame.label:SetPoint( "Left", frame, "Left", 20, 0 )
			frame.label:SetWidth( (width or 100) - 20 )
		end
		frame.label:SetText( label )
	end

	frame.set_icon = function( _icon )
		frame.icon:SetTexture( _icon )
	end

	return frame
end

m.GuiElements = M

return M
