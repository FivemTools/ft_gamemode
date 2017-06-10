-- @Author: samuelds
-- @Date:   2017-05-13T19:34:28+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-10T15:48:54+02:00
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
