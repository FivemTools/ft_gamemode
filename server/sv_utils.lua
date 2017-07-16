-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0

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
