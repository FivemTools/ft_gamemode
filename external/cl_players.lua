-- @Author: samuelds
-- @Date:   2017-05-13T19:34:28+02:00
-- @Project: FiveM Tools
-- @Last modified by:   samuelds
-- @Last modified time: 2017-06-08T23:38:41+02:00
-- @License: GNU General Public License v3.0

-- Send client
RegisterNetEvent('ft:ClientReady')
AddEventHandler('ft:ClientReady', function()
  Citizen.CreateThread(function()

    TriggerEvent('ft:ClientLoaded')

  end)
end)

-- Set player data
RegisterNetEvent('ft:ClSetPlayerData')
AddEventHandler('ft:ClSetPlayerData', function(array, data)
  Citizen.CreateThread(function()

    if type(data) == "table" then
      for name, value in pairs( data ) do
        Player[array][name] = value
      end
    else
      Player[array] = data
    end

  end)
end)
