RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local m = RaidCalendar

if m.FrameBuilder then return end

local M = {}

---@alias FrameStyle
---| "TOOLTIP"
---| "NONE"

---@class FrameBuilder
---@field name fun( self: FrameBuilder, name: string ): FrameBuilder
---@field type fun( self: FrameBuilder, type: FrameType ): FrameBuilder
---@field title fun( self: FrameBuilder, title: string ): FrameBuilder
---@field parent fun( self: FrameBuilder, parent: Frame ): FrameBuilder
---@field point fun( self: FrameBuilder, point: FramePoint, relative_region: string|Region|nil, relative_point: FramePoint, offset_x: number?, offset_y: number?)
---@field width fun( self: FrameBuilder, width: number ): FrameBuilder
---@field height fun( self: FrameBuilder, height: number ): FrameBuilder
---@field frame_level fun( self: FrameBuilder, frame_level: number ): FrameBuilder
---@field frame_style fun( self: FrameBuilder, frame_style: FrameStyle ): FrameBuilder
---@field strata fun( self: FrameBuilder, strata: FrameStrata ): FrameBuilder
---@field movable fun( self: FrameBuilder ): FrameBuilder
---@field backdrop fun( self: FrameBuilder, backdrop: Backdrop ): FrameBuilder
---@field backdrop_color fun( self: FrameBuilder, r: number, g: number, b: number, a: number ): FrameBuilder
---@field border_color fun( self: FrameBuilder, r: number, g: number, b: number, a: number ): FrameBuilder
---@field esc fun( self: FrameBuilder ): FrameBuilder
---@field close_button fun( self: FrameBuilder ): FrameBuilder
---@field on_drag_stop fun( self: FrameBuilder, callback: function ): FrameBuilder
---@field on_hide fun( self: FrameBuilder, on_hide: function ): FrameBuilder
---@field hidden fun( self: FrameBuilder ): FrameBuilder
---@field build fun( self: FrameBuilder ): Frame

---@class FrameBuilderFactory
---@field new fun(): FrameBuilder

---@return FrameBuilder
function M.new()
	local options = {
		backdrop = {}
	}
	local is_dragging

	local function create_frame()
		---@param parent Frame
		---@param title string
		---@return Frame
		local function create_titlebar( parent, title )
			local frame = CreateFrame( "Frame", nil, parent )
			frame:SetPoint( "TopLeft", parent, "TopLeft", 5, -5 )
			frame:SetPoint( "BottomRight", parent, "TopRight", -5, -24 )
			frame:SetBackdrop( { bgFile = "Interface/Buttons/WHITE8x8" } )
			frame:SetBackdropColor( 0, 0, 0, 1 )

			if options.frame_level then
				frame:SetFrameLevel( options.frame_level )
			end

			local bottom_border = frame:CreateTexture( nil, "ARTWORK" )
			bottom_border:SetTexture( .6, .6, .6, 1 )
			bottom_border:SetPoint( "TopLeft", frame, "BottomLeft", -1, 1 )
			bottom_border:SetPoint( "BottomRight", frame, "BottomRight", 1, 0 )

			if options.close_button then
				local btn_close = m.GuiElements.tiny_button( parent, "X", "Close Window" )
				btn_close:SetPoint( "TopRight", parent, "TopRight", -4, -4 )
				btn_close:SetScript( "OnClick", function() parent:Hide() end )

				if options.frame_level then
					btn_close:SetFrameLevel( options.frame_level + 1 )
				end
			end

			local title_label = frame:CreateFontString( nil, "ARTWORK", "GameFontNormal" )
			title_label:SetPoint( "TopLeft", frame, "TopLeft", 6, -3 )
			title_label:SetTextColor( 1, 1, 1 )
			title_label:SetJustifyH( "Left" )
			title_label:SetText( title )
			title_label:SetFontObject(m.GuiElements.font_highlight )
			frame["title"] = title_label

			return frame
		end

		local function create_main_frame()
			local type = options.type or "Frame"
			local parent = options.parent or UIParent

			local frame = CreateFrame( type, options.name, parent )

			frame:SetWidth( options.width or 280 )
			frame:SetHeight( options.height or 100 )
			frame:EnableMouse( true )

			if options.frame_style == "TOOLTIP" then
				frame:SetBackdrop( {
					bgFile = options.backdrop.bgFile or "Interface/Tooltips/UI-Tooltip-Background",
					edgeFile = options.backdrop.edgeFile or "Interface/Tooltips/UI-Tooltip-Border",
					tile = true,
					tileSize = 16,
					edgeSize = options.backdrop.edgeSize or 16,
					insets = { left = 4, right = 4, top = 4, bottom = 4 }
				} )
			elseif options.frame_style == "NONE" then
				if options.backdrop then
					frame:SetBackdrop( {
						bgFile = options.backdrop.bgFile,
						edgeFile = options.backdrop.edgeFile,
						tile = options.backdrop.tile or false,
						tileSize = options.backdrop.tileSize,
						edgeSize = options.backdrop.edgeSize,
						insets = options.backdrop.insets
					} )
				end
			else
				frame:SetBackdrop( {
					bgFile = options.backdrop.bgFile or "Interface/Buttons/WHITE8x8",
					edgeFile = options.backdrop.edgeFile or "Interface/Buttons/WHITE8x8",
					tile = options.backdrop.tile or true,
					tileSize = options.backdrop.tileSize or 0,
					edgeSize = options.backdrop.edgeSize or 0.8,
					insets = options.backdrop.insets or { left = 0, right = 0, top = 0, bottom = 0 }
				} )
			end

			if options.points then
				for _, p in pairs( options.points ) do
					frame:SetPoint( p.point, p.relative_region or UIParent, p.relative_point, p.x, p.y )
				end
			else
				frame:SetPoint( "TopLeft", UIParent, "Center", -(options.width or 200) / 2, (options.height or 200) / 2 )
			end

			if options.backdrop_color then
				local c = options.backdrop_color
				frame:SetBackdropColor( c.r, c.g, c.b, c.a or 1 )
			else
				frame:SetBackdropColor( 0, 0, 0, 0.7 )
			end

			if options.border_color then
				local c = options.border_color
				frame:SetBackdropBorderColor( c.r, c.g, c.b, options.frame_style == "Classic" and 1 or c.a )
			end

			if options.title then
				frame["titlebar"] = create_titlebar( frame, options.title )
			end

			if options.hidden then
				frame:Hide()
			end

			if options.frame_level then
				frame:SetFrameLevel( options.frame_level )
			end

			if options.strata then
				frame:SetFrameStrata( options.strata )
			else
				frame:SetFrameStrata( "DIALOG" )
			end

			frame:SetScript( "OnHide", function()
				if is_dragging then
					is_dragging = false
					frame:StopMovingOrSizing()
				end

				if options.on_hide then options.on_hide() end
			end )

			if options.movable then
				frame:SetMovable( true )
				frame:RegisterForDrag( "LeftButton" )

				frame:SetScript( "OnDragStart", function()
					if not frame:IsMovable() then return end
					is_dragging = true
					this:StartMoving()
				end )

				frame:SetScript( "OnDragStop", function()
					if not frame:IsMovable() then return end
					is_dragging = false
					frame:StopMovingOrSizing()

					if options.on_drag_stop then
						options.on_drag_stop( frame )
					end
				end )
			else
				frame:SetMovable( false )
			end

			if options.esc then
				table.insert( UISpecialFrames, frame:GetName() )
			end

			if options.scale then
				frame:SetScale( options.scale )
			end

			return frame
		end

		local frame = create_main_frame()
		return frame
	end


	local function name( self, v )
		options.name = v
		return self
	end

	local function type( self, v )
		options.type = v
		return self
	end

	local function title( self, v )
		options.title = v
		return self
	end

	local function parent( self, v )
		options.parent = v
		return self
	end

	local function point( self, _point, relative_region, relative_point, offset_x, offset_y )
		options.points = options.points or {}
		table.insert( options.points, {
			point = _point,
			relative_region = relative_region,
			relative_point = relative_point,
			x = offset_x,
			y = offset_y
		} )
		return self
	end

	local function width( self, v )
		options.width = v
		return self
	end

	local function height( self, v )
		options.height = v
		return self
	end

	local function frame_style( self, v )
		options.frame_style = v
		return self
	end

	local function frame_level( self, v )
		options.frame_level = v
		return self
	end

	local function strata( self, v )
		options.strata = v
		return self
	end

	local function movable( self )
		options.movable = true
		return self
	end

	local function backdrop( self, _backdrop )
		options.backdrop = _backdrop
		return self
	end

	local function backdrop_color( self, r, g, b, a )
		options.backdrop_color = { r = r, g = g, b = b, a = a }
		return self
	end

	local function border_color( self, r, g, b, a )
		options.border_color = { r = r, g = g, b = b, a = a }
		return self
	end

	local function esc( self )
		options.esc = true
		return self
	end

	local function close_button( self )
		options.close_button = true
		return self
	end

	local function on_drag_stop( self, callback )
		options.on_drag_stop = callback
		return self
	end

	local function on_hide( self, f )
    options.on_hide = f
    return self
  end

	local function hidden( self )
		options.hidden = true
		return self
	end

	local function build()
		return create_frame()
	end

	---@type FrameBuilder
	return {
		name = name,
		type = type,
		title = title,
		parent = parent,
		point = point,
		width = width,
		height = height,
		frame_level = frame_level,
		frame_style = frame_style,
		strata = strata,
		movable = movable,
		backdrop = backdrop,
		backdrop_color = backdrop_color,
		border_color = border_color,
		esc = esc,
		close_button = close_button,
		on_drag_stop = on_drag_stop,
		on_hide = on_hide,
		hidden = hidden,
		build = build
	}
end

m.FrameBuilder = M

return M
