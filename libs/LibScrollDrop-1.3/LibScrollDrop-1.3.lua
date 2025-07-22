-----------------------------------------------------------------------
-- LibScrollDrop-1.3
--
-- Dropdown with scrollbar and search
--

local MAJOR, MINOR = "LibScrollDrop-1.3", 1
if not LibStub then error( MAJOR .. " requires LibStub." ) end
local lib = LibStub:NewLibrary( MAJOR, MINOR )
if not lib then return end

---@class ScrollDropdown
---@field New fun( self, parent: Frame, optionsTbl: DropdownOptions?): DropdownFrame

---@class DropdownFrame: Frame
---@field SetItems fun( self: DropdownFrame, items_or_callback: function|table, callback: function? )
---@field options DropdownOptions
---@field selected_index number
---@field selected any

---@class DropdownList: Frame
---@field scrollbar Slider
---@field buttons table

---@class DropdownItem: Button
---@field id integer
---@field value any
---@field tooltip function|string|nil
---@field type? "normal"|"header"
---@field disabled boolean

---@class DropdownOptions
---@field max_visible? integer
---@field search? boolean
---@field width? integer
---@field dropdown_width? "auto"|integer
---@field dropdown_style? "classic"|"modern"|"pfui"
---@field dropdown_text_justify? "Left"|"Right"|"Center"
---@field label_on_select? "text"|"value"
---@field default_text? string
---@field dp_width integer?

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

local function hide_timer( frame )
	local timer = time()
	frame:SetScript( "OnUpdate", function()
		if time() >= timer + 2 then
			frame:SetScript( "OnUpdate", nil )
			lib.dropdown_list.frame:Hide()
			lib.active_dropdown = nil
		end
	end )
end

---@param parent DropdownList
---@param i integer
---@return DropdownItem
local function create_button( parent, i )
	---@class DropdownItem
	local btn = CreateFrame( "Button", nil, parent )
	btn:SetHeight( 16 )
	btn:SetPoint( "TopLeft", parent, "TopLeft", 6, -((i - 1) * 16) - 4 )
	btn:SetPoint( "Right", parent, "Right", -6, 0 )
	btn:SetTextFontObject( GameFontHighlightSmall )
	btn:SetHighlightTexture( "Interface\\QuestFrame\\UI-QuestTitleHighlight" )
	btn:SetPushedTextOffset(0,0)

	btn:GetHighlightTexture():SetBlendMode( "ADD" )
	btn:SetText( "" )
	btn:GetFontString():SetJustifyH( "Left" )
	btn.id = i

	btn.icon = btn:CreateTexture( nil, "ARTWORK" )
	btn.icon:SetPoint( "Left", btn, "Left", 0, 0 )
	btn.icon:SetWidth( 16 )
	btn.icon:SetHeight( 16 )

	local label = btn:GetFontString()
	label:ClearAllPoints()
	label:SetPoint( "Left", btn.icon, "Right", 2, 0 )

	btn:SetScript( "OnClick", function()
		if btn.type == "header" or btn.disabled then
			return
		end
		local dropdown = lib.active_dropdown
		local value = btn.value
		local text = btn:GetText()

		dropdown.selected_index = parent.offset + btn.id
		dropdown.selected = btn.value

		if text then
			dropdown.label:SetText( dropdown.options.label_on_select == "text" and text or value )
			dropdown.edit_box:ClearFocus()

			parent:Hide()
			lib.active_dropdown = nil
			if dropdown.on_select then
				dropdown.on_select( value, dropdown.selected_index )
			end
		end
	end )

	btn:SetScript( "OnEnter", function()
		parent:SetScript( "OnUpdate", nil )
		if btn.tooltip and type( btn.tooltip ) == "function" then
			btn:tooltip()
		end
		if btn.type == "header" then
			btn:GetHighlightTexture():Hide()
		else
			btn:GetHighlightTexture():Show()
		end
	end )
	btn:SetScript( "OnLeave", function()
		if btn.tooltip and GameTooltip:IsVisible() then
			GameTooltip:Hide()
		end
		if not MouseIsOver( parent ) then
			hide_timer( parent )
		end
	end )

	return btn
end

local function create_dropdown_list( max_items )
	if not lib.dropdown_list.frame then
		---@class DropdownList: Frame
		local frame = CreateFrame( "Frame", nil, UIParent )
		frame:SetWidth( 160 )
		frame:SetHeight( lib.default_options.max_visible * 16 + 8 )
		frame:SetFrameStrata( "FULLSCREEN_DIALOG" )
		frame:EnableMouseWheel( true )
		frame:EnableMouse( true )
		frame:Hide()
		lib.dropdown_list.frame = frame

		local scrollbar = CreateFrame( "Slider", "LibScrollDropScrollBar", frame, "UIPanelScrollBarTemplate" )
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
			if not MouseIsOver( frame ) then
				hide_timer( frame )
			end
		end )

		scrollbar:SetScript( "OnValueChanged", function()
			frame.offset = arg1
			lib:UpdateList()

			---@class DropdownItem
			local btn = GetMouseFocus()

			if btn and btn.tooltip and type( btn.tooltip ) == "function" then
				btn:tooltip()
			else
				GameTooltip:Hide()
			end
		end )

		scrollbar:SetScript( "OnLeave", function()
			if not MouseIsOver( frame ) then
				hide_timer( frame )
			end
		end )
	end
end

local function config_dropdown_list()
	local frame = lib.dropdown_list.frame
	---@class DropdownOptions
	local options = lib.active_dropdown.options

	local _G = getfenv()
	if options.dropdown_style == "pfui" and not _G.IsAddOnLoaded( "pfUI" ) then
		options.dropdown_style = "classic"
	end

	if type( options.dropdown_width ) == "number" then
		local width = options.dropdown_width
		---@cast width integer
		frame:SetWidth( width )
	end

	if options.dropdown_style == "classic" then
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
		frame:SetHeight( options.max_visible * 16 + 35 )

		for i, btn in frame.buttons do
			btn:SetPoint( "TopLeft", frame, "TopLeft", 15, -((i - 1) * 16) - 12 )
			btn:SetPoint( "Right", frame, "Right", -15, 0 )
			--btn:SetWidth( options.dp_width + 20 )
			btn:GetFontString():SetJustifyH( options.dropdown_text_justify )
		end

		frame.scrollbar:ClearAllPoints()
		frame.scrollbar:SetPoint( "TopRight", frame, "TopRight", -10, -26 )
		frame.scrollbar:SetPoint( "BottomRight", frame, "BottomRight", -10, 26 )
	elseif options.dropdown_style == "modern" then

	elseif options.dropdown_style == "pfui" then
		_G.pfUI.api.CreateBackdrop( frame, nil, true, 0.8 )
		frame:SetHeight( options.max_visible * 16 + 35 )

		for i, btn in frame.buttons do
			--btn:SetPoint( "TopLeft", frame, "TopLeft", 5, -((i - 1) * 16) - 4 )
			--btn:SetWidth( options.dp_width + 20 )
			btn:GetFontString():SetJustifyH( options.dropdown_text_justify )
		end

		_G.pfUI.api.SkinScrollbar( frame.scrollbar )
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


---@param parent Frame
---@param options DropdownOptions
---@return Frame
local function create_dropdown( parent, options )
	---@class DropdownFrame
	local frame = CreateFrame( "Frame", nil, parent )
	frame:SetWidth( options.width )
	frame:SetHeight( 24 )
	frame.options = options

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
	middle:SetWidth( options.width - 15 )
	middle:SetHeight( 64 )

	local right = frame:CreateTexture( nil, "ARTWORK" )
	right:SetTexture( "Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame" )
	right:SetTexCoord( 0.8046875, 1, 0, 1 )
	right:SetPoint( "Left", middle, "Right", 0, 0 )
	right:SetWidth( 25 )
	right:SetHeight( 64 )

	local button = CreateFrame( "Button", nil, frame )
	frame.dropdown_button = button
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
	edit_box:SetWidth( options.width - 30 )
	edit_box:SetHeight( 14 )
	edit_box:SetFontObject( GameFontHighlightSmall )
	edit_box:SetAutoFocus( false )
	frame.edit_box = edit_box

	local label = frame:CreateFontString( nil, "ARTWORK", "GameFontHighlightSmall" )
	label:SetPoint( "Left", frame, "Left", 7, 0 )
	label:SetWidth( options.width - 30 )
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
		if not lib.active_dropdown then
			lib:ShowListFor( frame )
			return
		end
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


	if options.search then
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

	if options.default_text then
		label:SetText( options.default_text )
	end

	return frame
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

	if dropdown.options.max_visible < lib.max_visible then
		for i = dropdown.options.max_visible + 1, lib.max_visible do
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

	local total_items = getn( items )
	local show_scrollbar = total_items > dropdown.options.max_visible
	local has_icon = false
	local classic_style = dropdown.options.dropdown_style == "classic"
	local padding = show_scrollbar and (classic_style and 28 or 22) or (classic_style and 15 or 6)

	for i = 1, dropdown.options.max_visible do
		local item = items and items[ offset + i ]
		---@type DropdownItem
		local btn = buttons[ i ]

		if item then
			btn.value = item.value
			btn.type = item.type
			btn.tooltip = item.tooltip or nil
			btn.disabled = item.disabled or false
			btn:SetText( item.text )
			btn:SetPoint( "Right", dropdown_frame, "Right", -padding, 0 )

			btn.icon:SetWidth( item.icon and 16 or 1 )
			btn.icon:SetTexture( item.icon or nil )

			has_icon = has_icon or item.icon

			btn:SetTextFontObject( item.type == "header" and GameFontNormal or GameFontHighlightSmall )
			btn:UnlockHighlight()
			btn:Show()
		else
			btn:Hide()
		end
	end

	local w = dropdown.options.dropdown_style == "classic" and 30 or 10
	dropdown_frame:SetWidth( dropdown.options.dp_width + 6 + w + (show_scrollbar and 18 or 0) + (has_icon and 18 or 0) )

	padding = dropdown.options.dropdown_style == "classic" and 24 or 8
	if show_scrollbar then
		dropdown_frame.scrollbar:Show()
		dropdown_frame:SetHeight( dropdown.options.max_visible * 16 + padding )
	else
		dropdown_frame.scrollbar:Hide()
		dropdown_frame:SetHeight( math.max( 40, total_items * 16 + padding ) )
	end

	dropdown_frame.scrollbar:SetMinMaxValues( 0, math.max( 0, total_items - dropdown.options.max_visible ) )
	dropdown_frame.scrollbar:SetValue( offset )
end

---------------------------------------------------
-- Show shared list for a dropdown
---------------------------------------------------
function lib:ShowListFor( dropdown )
	if not lib.dropdown_list.frame then
		create_dropdown_list( lib.default_options.max_visible )
	end

	local frame = lib.dropdown_list.frame
	frame:SetScript( "OnUpdate", nil )

	if lib.active_dropdown == dropdown then
		frame:Hide()
		lib.active_dropdown = nil
		return
	end

	lib.active_dropdown = dropdown

	if dropdown.options.max_visible > lib.max_visible then
		local buttons = frame.buttons
		for i = lib.max_visible + 1, dropdown.options.max_visible do
			local btn = create_button( frame, i )

			btn.id = i
			buttons[ i ] = btn
		end
		lib.max_visible = dropdown.options.max_visible
	end

	if dropdown.on_open then
		dropdown.items = dropdown.on_open( dropdown ) or {}
	end

	if dropdown.options.dropdown_width == "auto" and not dropdown.options.dp_width then
		local btn = frame.buttons[ 1 ]
		dropdown.options.dp_width = 0
		frame:Show()
		btn:Show()

		for _, item in dropdown.items do
			btn:SetText( item.text )
			if btn:GetFontString():GetStringWidth() > dropdown.options.dp_width then
				dropdown.options.dp_width = btn:GetFontString():GetStringWidth()
			end
		end
	end

	config_dropdown_list()

	frame:ClearAllPoints()
	local x = dropdown.options.dropdown_style == "classic" and 4 or 0
	local y = dropdown.options.dropdown_style == "classic" and 2 or 1
	frame:SetPoint( "TopRight", dropdown, "BottomRight", x, y )
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
	options = merge_options( lib.default_options, options )

	---@class DropdownFrame
	local dropdown = create_dropdown( parent, options )


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

	function dropdown:SetText( text )
		dropdown.label:SetText( text )
		dropdown.selected = nil
		dropdown.selected_index = nil
	end

	---@param value string
	function dropdown:SetSelected( value )
		if self.on_open or next(self.items) then
			self.items = self.on_open and self.on_open( self ) or self.items

			for index, item in self.items do
				if item.value == value then
					self.selected = value
					self.selected_index = index
					self.label:SetText( item.text )
					return
				end
			end
		end
		self.selected = nil
		self.selected_index = nil
	end

	function dropdown:GetSelected()
		return dropdown.items[ dropdown.selected_index ]
	end

	return dropdown
end
