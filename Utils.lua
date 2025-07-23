RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local M = RaidCalendar

local bot_online
local bot_check_time = 0

--- @param hex string
--- @return number r
--- @return number g
--- @return number b
--- @return number a
function M.hex_to_rgba( hex )
	M.debug("color: " .. hex)
	local r, g, b, a = string.match( hex, "^#?(%x%x)(%x%x)(%x%x)(%x?%x?)$" )
	M.debug(r)
	M.debug(g)
	M.debug(b)
	M.debug(a)

	r, g, b = tonumber( r, 16 ) / 255, tonumber( g, 16 ) / 255, tonumber( b, 16 ) / 255
	a = a ~= "" and tonumber( a, 16 ) / 255 or 1
	return r, g, b, a
end

---@param name string
---@param class string
---@return string
function M.colorize_player_by_class( name, class )
	if not class then return name end
	local color = RAID_CLASS_COLORS[ string.upper( class ) ]
	if not color.colorStr then
		color.colorStr = string.format( "ff%02x%02x%02x", color.r * 255, color.g * 255, color.b * 255 )
	end
	return "|c" .. color.colorStr .. name .. "|r"
end

---@param diff number
---@return string
function M.format_time_difference( diff )
	local abs_diff = math.abs( diff )

	if abs_diff >= 86400 then
		local days = math.floor( abs_diff / 86400 )
		if diff < 0 then
			return days .. " day" .. (days ~= 1 and "s" or "") .. " ago"
		else
			return "in " .. days .. " day" .. (days ~= 1 and "s" or "")
		end
	elseif abs_diff >= 3600 then
		local hours = math.floor( (abs_diff + 1800) / 3600 ) -- round to nearest hour
		if diff < 0 then
			return hours .. " hour" .. (hours ~= 1 and "s" or "") .. " ago"
		else
			return "in " .. hours .. " hour" .. (hours ~= 1 and "s" or "")
		end
	else
		local minutes = math.floor( (abs_diff + 30) / 60 ) -- round to nearest minute
		if diff < 0 then
			return minutes .. " minute" .. (minutes ~= 1 and "s" or "") .. " ago"
		else
			return "in " .. minutes .. " minute" .. (minutes ~= 1 and "s" or "")
		end
	end
end

---@return number r
---@return number g
---@return number b
---@return number a
---@nodiscard
function M.bot_online_status()
	if time() - bot_check_time > 600 or not bot_online then
		M.debug( "Checking bot online status" )
		bot_check_time = time()
		bot_online = false
		for i = 1, GetNumGuildMembers() do
			local name, _, _, _, _, _, _, _, online = GetGuildRosterInfo( i )
			if name == M.db.user_settings.bot_name and online == 1 then
				bot_online = true
				break
			end
		end
	end

	if bot_online then
		return 0, 1, 0, 0.9
	else
		return 1, 0, 0, 0.9
	end
end

---@param value string|number
---@param t table
---@param extract_field string?
function M.find( value, t, extract_field )
	if type( t ) ~= "table" or M.count( t ) == 0 then return nil end

	for i, v in pairs( t ) do
		local val = extract_field and v[ extract_field ] or v
		if val == value then return v, i end
	end

	return nil
end

---@param t table
---@return number
function M.count( t )
	local count = 0
	for _ in pairs( t ) do
		count = count + 1
	end

	return count
end

---@param item_name string
---@param item_quality string
---@return string
function M.get_item_name_colorized( item_name, item_quality )
	local color = ITEM_QUALITY_COLORS[ item_quality ]
	local link = color.hex .. item_name .. "|r"

	return link
end

function M.capitalize_words( str )
	return string.gsub( str, "(%w)(%w*)", function( first, rest )
		return string.upper( first ) .. string.lower( rest )
	end )
end

function M.is_new_version( mine, theirs )
  local function parse_version( v )
    local parts = {}

    for part in string.gmatch( v, "%d+" ) do
      table.insert( parts, tonumber( part ) )
    end

    return parts
  end

  local my_version = parse_version( mine )
  local their_version = parse_version( theirs )

  for i = 1, math.max( getn( my_version ), getn( their_version ) ) do
    local my_part = my_version[ i ] or 0
    local their_part = their_version[ i ] or 0

    if their_part > my_part then
      return true
    elseif their_part < my_part then
      return false
    end
  end

  return false
end

---@param message string
---@param short boolean?
function M.info( message, short )
	local tag = string.format( "|c%s%s|r", M.tagcolor, short and "RC" or "RaidCalendar" )
	DEFAULT_CHAT_FRAME:AddMessage( string.format( "%s: %s", tag, message ) )
end

---@param message string
function M.error( message )
	local tag = string.format( "|c%s%s|r|cffff0000%s|r", M.tagcolor, "RC", "ERROR" )
	DEFAULT_CHAT_FRAME:AddMessage( string.format( "%s: %s", tag, message ) )
end

---@param message string
function M.debug( message )
	if M.debug_enabled then
		M.info( message, true )
	end
end

---@param o any
---@return string
function M.dump( o )
	--if not o then return "nil" end
	if type( o ) ~= 'table' then return tostring( o ) end

	local entries = 0
	local s = "{"

	for k, v in pairs( o ) do
		if (entries == 0) then s = s .. " " end

		local key = type( k ) ~= "number" and '"' .. k .. '"' or k

		if (entries > 0) then s = s .. ", " end

		s = s .. "[" .. key .. "] = " .. M.dump( v )
		entries = entries + 1
	end

	if (entries > 0) then s = s .. " " end
	return s .. "}"
end

function M.is_array( t )
	local count = 0
	for k, _ in pairs( t ) do
		if type( k ) ~= "number" then return false end
		count = count + 1
	end
	for i = 1, count do
		if t[ i ] == nil then return false end
	end
	return true
end

function M.flatten( value )
	local value_type = type( value )

	if value_type == "table" then
		if M.is_array( value ) then
			-- JSON array
			local items = {}
			for i = 1, getn(value) do
				table.insert( items, M.flatten( value[ i ] ) )
			end
			return "{" .. table.concat( items, ",	" ) .. "}"
		else
			-- JSON object
			local items = {}
			for k, v in pairs( value ) do
				table.insert( items, '["' .. tostring( k ) .. '"]=' .. M.flatten( v ) )
			end
			return "{" .. table.concat( items, "," ) .. "}"
		end
	elseif value_type == "string" then
		return '"' .. string.gsub(value, '"', '\\"' ) .. '"'
	elseif value_type == "number" or value_type == "boolean" then
		return tostring( value )
	elseif value_type == "nil" then
		return "null"
	end

	error( "Unsupported type: " .. value_type )
end

local base64_chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' -- You will need this for encoding/decoding

function M.encode_base64( data )
  return (string.gsub( string.gsub( data, '.', function( x )
    local r, byte = '', string.byte( x )
    for i = 8, 1, -1 do r = r .. (mod( byte, 2 ^ i ) - mod( byte, 2 ^ (i - 1) ) > 0 and '1' or '0') end
    return r
  end ) .. '0000', '%d%d%d?%d?%d?%d?', function( x )
    if (string.len( x ) < 6) then return '' end
    local c = 0
    for i = 1, 6 do c = c + (string.sub( x, i, i ) == '1' and 2 ^ (6 - i) or 0) end
    return string.sub( base64_chars, c + 1, c + 1 )
  end ) .. ({ '', '==', '=' })[ mod( string.len( data ), 3 ) + 1 ])
end

---@diagnostic disable-next-line: undefined-field
if not string.gmatch then string.gmatch = string.gfind end

---@diagnostic disable-next-line: duplicate-set-field
string.match = function( str, pattern )
	if not str then return nil end

	local _, _, r1, r2, r3, r4, r5, r6, r7, r8, r9 = string.find( str, pattern )
	return r1, r2, r3, r4, r5, r6, r7, r8, r9
end

---@diagnostic disable-next-line: lowercase-global
strtrim = strtrim or function( s )
	if type( s ) ~= "string" then
		return ""
	end
	return string.match( s, "^%s*(.-)%s*$" )
end
