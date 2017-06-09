-- @Author: samuelds
-- @Date:   2017-05-13T19:34:28+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-09T12:10:53+02:00
-- @License: GNU General Public License v3.0

-- Get all data in player client
function GetPlayerData(name)
  Citizen.CreateThread(function()

    if name ~= nil then
      return Player[name]
    else
      return Player
    end

  end)
end

-- Set data in player client
function SetPlayerData(name, value)
  Citizen.CreateThread(function()

      Player[name] = value

  end)
end
