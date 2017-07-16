-- @Date:   2017-06-11T23:19:36+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-11T23:19:36+02:00
-- @License: GNU General Public License v3.0

-- Get all data in player client
function GetPlayerData(name)

  if name ~= nil then
    return Player[name]
  else
    return Player
  end

end

-- Set data in player client
function SetPlayerData(name, value)

  Player[name] = value

end
