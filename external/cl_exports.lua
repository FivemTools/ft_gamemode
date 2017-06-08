-- @Author: samuelds
-- @Date:   2017-05-13T19:34:28+02:00
-- @Project: FiveM Tools
-- @Last modified by:   samuelds
-- @Last modified time: 2017-06-08T23:38:34+02:00
-- @License: GNU General Public License v3.0

-- Get all data in player client
function GetPlayerData(value)
  Citizen.CreateThread(function()

    if value ~= nil then
      return Player[value]
    else
      return Player
    end

  end)
end

-- Set data in player client
function SetPlayerData(value1, value2, value3)
  Citizen.CreateThread(function()

    if value3 ~= nil then
      Player[value1][value2] = value3
    else
      Player[value1] = value2
    end

  end)
end
