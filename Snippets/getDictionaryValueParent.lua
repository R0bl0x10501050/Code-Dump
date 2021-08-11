local find
find = function(originalTable, findValue)
	for index, wrappedTable in pairs(originalTable) do
		if wrappedTable == findValue then
			return wrappedTable
		else
			return nil
		end
	end
end

local function getParentOf(tagVal)
	local recursiveLoop
	recursiveLoop = function(parent)
		for k, v in pairs(parent) do
			if type(v) ~= 'table' then continue end
                if find(v, tagVal) then
                    return v
                else
                    return recursiveLoop(v)
                end
            end
        end
        
        for k, v in pairs(tree) do
            if type(v) ~= 'table' then continue end
            if find(v, tagVal) then
                return v
            else
                return recursiveLoop(v)
            end
        end
    end
end
