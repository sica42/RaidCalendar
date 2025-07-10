-----------------------------------------------------------------------
-- LibScrollDrop-1.2
--
-- Dropdown with scrollbar and search
--

local MAJOR, MINOR = "LibScrollDrop-1.2", 1
if not LibStub then error( MAJOR .. " requires LibStub." ) end
local lib = LibStub:NewLibrary( MAJOR, MINOR )
if not lib then return end

---@class ScrollDropdown
---@field New fun( self, parent: Frame, optionsTbl: DropdownOptions?): DropdownFrame

---@class DropdownFrame: Frame
---@field SetItems fun( self: DropdownFrame, items_or_callback: function|table, callback: function? )
---@field options DropdownOptions
---@field selected any

---@class DropdownList: Frame
---@field scrollbar Slider
---@field buttons table

---@class DropdownItem: Button
---@field id integer
---@field value any
---@field tooltip function|string
---@field type "normal"|"header"

---@class DropdownOptions
---@field max_visible? integer
---@field search? boolean
---@field width? integer
---@field dropdown_width? "auto"|integer
---@field dropdown_style? "classic"|"modern"
---@field dropdown_text_justify? "Left"|"Right"|"Center"
---@field label_on_select? "text"|"value"
---@field default_text? string

lib.dropdown_list = lib.dropdownlist or {}
lib.active_dropdown = nil

---@type DropdownOptions
lib.default_options = {
	max_visible = 10,
	search = true,
	width = 100,
	dropdown_width = "auto",
	dropdown_style = "classic",
	dropdown_text_justify = "Left",
	label_on_select = "text"
}

---@param parent DropdownList
---@param i integer
---@return DropdownItem
local function create_button( parent, i )
	---@class DropdownItem
	local btn = CreateFrame( "Button", nil, parent )
	btn:SetWidth( 130 )
	btn:SetHeight( 16 )
	btn:SetPoint( "TopLeft", parent, "TopLeft", 6, -((i - 1) * 16) - 4 )
	btn:SetTextFontObject( GameFontHighlightSmall )
	btn:GetTextFontObject():SetJustifyH( "Left" )
	btn:SetHighlightTexture( "Interface\\QuestFrame\\UI-QuestTitleHighlight" )
	btn:GetHighlightTexture():SetBlendMode( "ADD" )
	btn.id = i

	btn.icon = btn:CreateTexture( nil, "ARTWORK" )
	btn.icon:SetPoint( "Left", btn, "Left", 0, 0 )
	btn.icon:SetWidth( 16 )
	btn.icon:SetHeight( 16 )

	btn:SetScript( "OnClick", function()
		if btn.type == "header" then
			return
		end
		local dropdown = lib.active_dropdown
		local index = parent.offset + btn.id
		dropdown.selected = btn.value
		local value = btn.value
		local text = btn:GetText()
		if text then
			dropdown.label:SetText( lib.options.label_on_select == "text" and text or value )
			dropdown.edit_box:ClearFocus()

			parent:Hide()
			lib.active_dropdown = nil
			if dropdown.on_select then
				dropdown.on_select( value, index )
			end
		end
	end )

	btn:SetScript( "OnEnter", function()
		if btn.tooltip then
			if type( btn.tooltip ) == "function" then
				btn.tooltip()
			end
		end
	end )
	btn:SetScript( "OnLeave", function()
		if btn.tooltip and GameTooltip:IsVisible() then
			GameTooltip:Hide()
		end
	end )

	return btn
end

local function create_dropdown_list( max_items )
	if not lib.dropdown_list.frame then
		---@class DropdownList: Frame
		local frame = CreateFrame( "Frame", nil, UIParent )
		--[[
    frame:SetBackdrop( {
      bgFile = "Interface/Buttons/WHITE8x8", --"Interface\\DialogFrame\\UI-DialogBox-Background",
      edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
      tile = true,
      tileSize = 16,
      edgeSize = 16,
      insets = { left = 4, right = 4, top = 4, bottom = 4 }
    } )
    frame:SetBackdropColor( 1, 0, 0, 1 )]]
		frame:SetWidth( 160 )
		frame:SetHeight( lib.default_options.max_visible * 16 + 8 )
		frame:SetFrameStrata( "FULLSCREEN_DIALOG" )
		frame:EnableMouseWheel( true )
		frame:EnableMouse( true )
		frame:Hide()
		lib.dropdown_list.frame = frame

		local scrollbar = CreateFrame( "Slider", "lala", frame, "UIPanelScrollBarTemplate" )
		scrollbar:SetPoint( "TopRight", frame, "TopRight", -4, -20 )
		scrollbar:SetPoint( "BottomRight", frame, "BottomRight", -4, 20 )
		scrollbar:SetWidth( 16 )
		scrollbar:SetValueStep( 1 )
		scrollbar:SetMinMaxValues( 0, 0 )
		frame.scrollbar = scrollbar

		local buttons = {}
		frame.buttons = buttons

		lib.max_visible = lib.default_options.max_visible
		for i = 1, lib.default_options.max_visible do
			---@type DropdownItem
			local btn = create_button( frame, i )
			buttons[ i ] = btn
		end

		frame:SetScript( "OnMouseWheel", function()
			local value = scrollbar:GetValue() - arg1
			scrollbar:SetValue( value )
		end )

		frame:SetScript( "OnEnter", function()
			frame:SetScript( "OnUpdate", nil )
		end )

		frame:SetScript( "OnLeave", function()
			if MouseIsOver( frame ) then
				return
			end

			frame.timer = time()
			frame:SetScript( "OnUpdate", function()
				if time() >= frame.timer + 1 then
					frame:SetScript( "OnUpdate", nil )
					lib.dropdown_list.frame:Hide()
					lib.active_dropdown = nil
				end
			end )
		end )

		scrollbar:SetScript( "OnValueChanged", function()
			--      frame.offset = math.floor( arg1 + 0.5 )
			frame.offset = arg1
			lib:UpdateList()
			GameTooltip:Hide()
		end )
	end
end

local function config_dropdown_list()
	local frame = lib.dropdown_list.frame

	if lib.options.dropdown_style == "classic" then
		frame:SetBackdrop( {
			bgFile = "Interface\\Buttons\\WHITE8x8",
			edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
			tile = true,
			tileSize = 32,
			edgeSize = 32,
			insets = { left = 8, right = 8, top = 8, bottom = 8 }
		} )

		frame:SetBackdropBorderColor( TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b )
		frame:SetBackdropColor( 0, 0, 0, 0.9 )
		frame:SetHeight( lib.options.max_visible * 16 + 35 )

		if type( lib.options.dropdown_width ) == "number" then
			frame:SetWidth( lib.options.dropdown_width )
		end

		for i, btn in frame.buttons do
			btn:SetPoint( "TopLeft", frame, "TopLeft", 15, -((i - 1) * 16) - 12 )
			btn:SetWidth( lib.options.dp_width + 20 )
			btn:GetTextFontObject():SetJustifyH( lib.options.dropdown_text_justify )
		end

		frame.scrollbar:ClearAllPoints()
		frame.scrollbar:SetPoint( "TopRight", frame, "TopRight", -10, -26 )
		frame.scrollbar:SetPoint( "BottomRight", frame, "BottomRight", -10, 26 )
	elseif lib.options.dropdown_style == "modern" then

	end
end

local function update_highlight()
	local dropdown_frame = lib.dropdown_list.frame
	local buttons = dropdown_frame.buttons
	local count = 0

	for _, btn in buttons do
		if btn:IsVisible() then
			btn:UnlockHighlight()
			count = count + 1
		end
	end

	if lib.selected_index then
		local min, max = dropdown_frame.scrollbar:GetMinMaxValues()

		if lib.selected_index == 0 then
			lib.selected_index = lib.selected_index + 1
			dropdown_frame.offset = dropdown_frame.offset - 1

			if dropdown_frame.offset < min then
				dropdown_frame.offset = max
				lib.selected_index = count
			end
		elseif lib.selected_index > count then
			lib.selected_index = lib.selected_index - 1
			dropdown_frame.offset = dropdown_frame.offset + 1

			if dropdown_frame.offset > max then
				dropdown_frame.offset = 0
				lib.selected_index = 1
			end
		end

		lib:UpdateList()
		buttons[ lib.selected_index ]:LockHighlight()
	end
end

---@param self DropdownFrame
---@param parent Frame
---@return Frame
local function create_dropdown( self, parent )
	---@class DropdownFrame
	local frame = CreateFrame( "Frame", nil, parent )
	frame:SetWidth( self.options.width )
	frame:SetHeight( 24 )

	local left = frame:CreateTexture( nil, "ARTWORK" )
	left:SetTexture( "Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame" )
	left:SetTexCoord( 0, 0.1953125, 0, 1 )
	left:SetPoint( "TopLeft", frame, "TopLeft", -18, 19 )
	left:SetWidth( 25 )
	left:SetHeight( 64 )

	local middle = frame:CreateTexture( nil, "ARTWORK" )
	middle:SetTexture( "Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame" )
	middle:SetTexCoord( 0.1953125, 0.8046875, 0, 1 )
	middle:SetPoint( "Left", left, "Right", 0, 0 )
	middle:SetWidth( self.options.width - 15 )
	middle:SetHeight( 64 )

	local right = frame:CreateTexture( nil, "ARTWORK" )
	right:SetTexture( "Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame" )
	right:SetTexCoord( 0.8046875, 1, 0, 1 )
	right:SetPoint( "Left", middle, "Right", 0, 0 )
	right:SetWidth( 25 )
	right:SetHeight( 64 )

	local button = CreateFrame( "Button", nil, frame )
	button:SetPoint( "Right", frame, "Right", 0, 0 )
	button:SetWidth( 24 )
	button:SetHeight( 24 )

	button:SetNormalTexture( "Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Up" )
	button:SetPushedTexture( "Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Down" )
	button:SetDisabledTexture( "Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Disabled" )
	button:SetHighlightTexture( "Interface\\Buttons\\UI-Common-MouseHilight" )

	button:SetScript( "OnClick", function()
		lib.search_str = nil
		lib:ShowListFor( frame )
	end )

	local edit_box = CreateFrame( "EditBox", nil, frame )
	edit_box:SetPoint( "Left", frame, "Left", 7, 0 )
	edit_box:SetWidth( self.options.width - 30 )
	edit_box:SetHeight( 14 )
	edit_box:SetFontObject( GameFontHighlightSmall )
	edit_box:SetAutoFocus( false )
	frame.edit_box = edit_box

	local label = frame:CreateFontString( nil, "ARTWORK", "GameFontHighlightSmall" )
	label:SetPoint( "Left", frame, "Left", 7, 0 )
	label:SetWidth( self.options.width - 30 )
	label:SetHeight( 14 )
	label:SetJustifyH( "Right" )
	frame.label = label

	edit_box:SetScript( "OnEscapePressed", function()
		edit_box:ClearFocus()
	end )

	edit_box:SetScript( "OnEnterPressed", function()
		if lib.dropdown_list.frame:IsVisible() then
			local buttons = lib.dropdown_list.frame.buttons
			local last_btn
			local count = 0

			for _, btn in ipairs( buttons ) do
				if btn:IsVisible() then
					count = count + 1
					last_btn = btn
				end
			end

			if lib.selected_index then
				last_btn = buttons[ lib.selected_index ]
			end

			if count == 1 or lib.selected_index then
				last_btn:Click( "LeftButton" )
			end
		end
	end )

	edit_box:SetScript( "OnTabPressed", function()
		if IsShiftKeyDown() then
			lib.selected_index = lib.selected_index and lib.selected_index - 1 or 1
		else
			lib.selected_index = lib.selected_index and lib.selected_index + 1 or 1
		end

		update_highlight()
	end )

	edit_box:SetScript( "OnTextChanged", function()
		local text = edit_box:GetText()
		if text ~= "" or lib.search_str and lib.search_str ~= "" then
			lib:Search( frame, text )
		end
	end )


	if self.options.search then
		edit_box:SetScript( "OnEditFocusGained", function()
			label:Hide()
		end )
		edit_box:SetScript( "OnEditFocusLost", function()
			lib.dropdown_list.frame:Hide()
			lib.search_str = nil
			edit_box:SetText( "" )
			label:Show()
		end )
	else
		edit_box:EnableKeyboard( false )
		edit_box:EnableMouse( false )
		edit_box:ClearFocus()
	end

	if self.options.default_text then
		label:SetText( self.options.default_text )
	end

	return frame
end

local function merge_options( defaults, options )
	local result = {}

	for key, value in pairs( defaults ) do
		result[ key ] = value
	end

	if type( options ) == "table" then
		for key, value in pairs( options ) do
			result[ key ] = value
		end
	end

	return result
end

---------------------------------------------------
-- Update list contents
---------------------------------------------------
function lib:UpdateList()
	local dropdown_frame = lib.dropdown_list.frame
	local dropdown = lib.active_dropdown
	local offset = dropdown_frame.offset or 0
	local buttons = dropdown_frame.buttons
	local items = nil

	if self.options.max_visible < lib.max_visible then
		for i = self.options.max_visible + 1, lib.max_visible do
			buttons[ i ]:Hide()
		end
	end

	if lib.search_str and lib.search_str ~= "" then
		items = {}
		for _, item in dropdown.items do
			if string.find( string.lower( item.text ), lib.search_str, nil, true ) then
				table.insert( items, item )
			end
		end
	end

	items = items or dropdown.items

	for i = 1, self.options.max_visible do
		local index = offset + i
		local item = items and items[ index ]
		local btn = buttons[ i ]

		if item then
			btn.value = item.value
			btn.type = item.type
			btn.tooltip = item.tooltip or nil
			btn:SetText( item.text )

			local text = btn:GetFontString()
			text:ClearAllPoints()
			if item.icon then
				btn.icon:SetTexture( item.icon )
				text:SetPoint( "Left", btn, "Left", 18, 0 )
			else
				btn.icon:SetTexture( nil )
				text:SetPoint( "Left", btn, "Left", 0, 0 )
			end

			if item.type == "header" then
				--text:SetTextColor( NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1 )
				--text:SetFontObject( "GameFontNormalLarge" )
				btn:SetTextFontObject( GameFontNormal )
			else
				btn:SetTextFontObject( GameFontHighlightSmall )
				--text:SetTextColor( 1, 1, 1, 1 )
				--text:SetFontObject( "GameFontHighlight" )
			end


			btn:UnlockHighlight()
			btn:Show()
		else
			btn:Hide()
		end
	end

	local total = getn( items )
	local padding = self.options.dropdown_style == "classic" and 24 or 8
	if total < self.options.max_visible then
		dropdown_frame.scrollbar:Hide()
		dropdown_frame:SetHeight( total * 16 + padding )
	else
		dropdown_frame.scrollbar:Show()
		dropdown_frame:SetHeight( self.options.max_visible * 16 + padding )
	end

	dropdown_frame.scrollbar:SetMinMaxValues( 0, math.max( 0, total - self.options.max_visible ) )
	dropdown_frame.scrollbar:SetValue( offset )
end

---------------------------------------------------
-- Show shared list for a dropdown
---------------------------------------------------
function lib:ShowListFor( dropdown )
	lib.options = self.options

	if not lib.dropdown_list.frame then
		create_dropdown_list( lib.default_options.max_visible )
	end

	local frame = lib.dropdown_list.frame

	if lib.active_dropdown == dropdown then
		frame:Hide()
		lib.active_dropdown = nil
		return
	end

	lib.active_dropdown = dropdown

	if self.options.max_visible > lib.max_visible then
		local buttons = frame.buttons
		for i = lib.max_visible + 1, self.options.max_visible do
			local btn = create_button( frame, i )

			btn.id = i
			buttons[ i ] = btn
		end
		lib.max_visible = self.options.max_visible
	end

	if dropdown.on_open then
		dropdown.items = dropdown.on_open( dropdown ) or {}
	end

	if self.options.dropdown_width == "auto" then
		local btn = frame.buttons[ 1 ]
		self.options.dp_width = 0
		for _, item in dropdown.items do
			btn:SetText( item.text )

			if btn:GetFontString():GetStringWidth() > self.options.dp_width then
				self.options.dp_width = btn:GetFontString():GetStringWidth()
			end
		end
		frame:SetWidth( self.options.dp_width + 60 )
	end

	config_dropdown_list()

	frame:ClearAllPoints()
	frame:SetPoint( "TopRight", dropdown, "BottomRight", 4, 2 )
	frame.offset = 0

	self:UpdateList()
	frame:Show()
end

---------------------------------------------------
-- Filter dropdown by search value
---------------------------------------------------
---@param dropdown DropdownFrame
---@param str string
function lib:Search( dropdown, str )
	lib.search_str = string.lower( str )
	lib.selected_index = nil
	if lib.dropdown_list.frame then
		lib.dropdown_list.frame.offset = 0
	end

	if lib.active_dropdown and lib.active_dropdown == dropdown then
		if lib.dropdown_list.frame:IsVisible() then
			lib:UpdateList()
		else
			lib:ShowListFor( dropdown )
		end
	else
		lib:ShowListFor( dropdown )
	end
end

---------------------------------------------------
-- New dropdown
---------------------------------------------------
---@param parent Frame
---@param options DropdownOptions?
---@return Frame DropdownFrame
function lib:New( parent, options )
	-----@type DropdownOptions
	self.options = merge_options( lib.default_options, options )

	---@class DropdownFrame
	local dropdown = create_dropdown( self, parent )


	function dropdown:SetItems( items_or_callback, on_select )
		if type( items_or_callback ) == "function" then
			self.items = {}
			self.on_open = items_or_callback
		else
			self.items = items_or_callback
			self.on_open = nil
		end
		if on_select then
			self.on_select = on_select
		end
	end

	function dropdown:SetValue( value )
		dropdown.label:SetText( value )
		dropdown.selected = value
	end

	function dropdown:SetSelected( text, value )
		dropdown.label:SetText( text )
		dropdown.selected = value
	end

	--function dropdown:Get()
	--return dropdown.selected
	--end

	return dropdown
end
