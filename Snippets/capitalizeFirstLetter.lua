function capsFirstLetter(name)
	if type(name) ~= "string" then return name end
	local splitName = string.split(name, "")
	local newStr = string.upper(splitName[1])
	table.remove(splitName, 1)
	for _, v in ipairs(splitName) do
		newStr = newStr..v
	end
	return newStr
end
