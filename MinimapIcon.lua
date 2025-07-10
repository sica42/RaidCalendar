RaidCalendar = RaidCalendar or {}

---@class RaidCalendar
local m = RaidCalendar

if m.MinimapIcon then return end

---@class MinimapIcon


local M = {}

function M.new()
	local ldb = LibStub:GetLibrary( "LibDataBroker-1.1" )
	local icon = LibStub:GetLibrary( "LibDBIcon-1.0" )

	local data = {
		type = "data source",
		label = m.name,
		icon = "Interface\\AddOns\\RaidCalendar\\assets\\icon.tga",
		tocname = m.name
	}

	local obj = ldb:NewDataObject( "Broker_RaidCalendar", data ) ---[[@as LibDataBroker.DataDisplay]]

	local function group_by_day(sorted_events)
		local grouped = {}
		local now = time()
		local today = date("*t", now)
		local tomorrow = date("*t", now + 86400)

		for _, event in ipairs(sorted_events) do
			local eventTime = event.startTime
			local dt = date("*t", eventTime)

			local label
			if dt.year == today.year and dt.yday == today.yday then
				label = "Today"
			elseif dt.year == tomorrow.year and dt.yday == tomorrow.yday then
				label = "Tomorrow"
			else
				label = date("%A", eventTime)
			end

			local _, index = m.find(label, grouped, "label")

			if not index then
				table.insert( grouped, { label=label, entries={} })
				index = getn( grouped )
			end

			table.insert(grouped[index].entries, event)
		end

		return grouped
	end



	function obj.OnTooltipShow( self )
		local events = {}
		local now = time( date( "*t" ) )

		for k, v in pairs( m.db.events ) do
			if v.startTime - now > 0 then
				table.insert( events, { key = k, startTime = v.startTime } )
			end
		end

		table.sort(events, function(a, b)
			return a.startTime < b.startTime
		end)

		local grouped = group_by_day(events )

		self:AddLine( "Upcoming raids" )
		self:AddLine( " " )

		for _, group in ipairs(grouped) do
			self:AddLine( group.label )
			for _, e in ipairs(group.entries) do
				local event = m.db.events[ e.key ]
				local start_time = date( m.time_format, event.startTime )
				self:AddLine(string.format("  - %s |cffffffff[%s]|r", m.capitalize_words(event.title), start_time))
			end
		end
	end

	function obj:OnClick( button )
		m.calendar_popup.toggle()
	end

	icon:Register( m.name, obj, m.db.minimap_icon )

	---@type MinimapIcon
	return {
	}
end

m.MinimapIcon = M
return M
