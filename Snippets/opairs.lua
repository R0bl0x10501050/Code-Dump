function opairs(Table)
	table.sort(Table)
	local data = {}
	for k, _ in pairs(Table) do
		table.insert(data, k)
	end
	table.sort(data)
	local number = 1
	return function()
		local key, value = data[number], Table[data[number]]
		number += 1
		if key ~= nil and value ~= nil then
			return key, value
		end
	end
end

--[[
for key, value in opairs({C=9, Z=8, J=0}) do
    print(key, value)
    -- C 9
    -- J 0
    -- Z 8
end
]]
