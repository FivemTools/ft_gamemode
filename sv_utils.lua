-- Print tables
function tprint (tbl, indent)

  if not indent then indent = 0 end
  for k, v in pairs(tbl) do
    formatting = string.rep("  ", indent) .. k .. ": "
    if type(v) == "table" then
      print(formatting)
      tprint(v, indent+1)
    else
      print(formatting .. v)
    end
  end

end

-- Get SteamId
function getSteamId (source)
  local identifiers = GetPlayerIdentifiers(source)
  return identifiers[1]
end

-- Get first character
function firstString (String, Compare)
  if (string.sub(String, 1, string.len(Compare)) == Compare) then
    return true
  else
    return false
  end
end

-- Explod string
function stringSplit (self, delimiter)
  local split = self:Split(delimiter)
  local result = {}

  for i = 0, #split - 1 do
    table.insert(result, split[i])
  end

  return result
end