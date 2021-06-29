local function getDictionaryLength(dict)
	local length = 0
	for k, _ in pairs(dict) do
		length += 1
	end
	return length
end
