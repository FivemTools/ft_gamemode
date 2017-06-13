-- @Date:   2017-06-11T23:19:39+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-13T11:12:40+02:00
-- @License: GNU General Public License v3.0

-- Send client
RegisterNetEvent('ft:ClReady')
AddEventHandler('ft:ClReady', function()
  Citizen.CreateThread(function()

    TriggerEvent('ft:ClLoaded')

  end)
end)

-- Set player data
RegisterNetEvent('ft:ClSetPlayerData')
AddEventHandler('ft:ClSetPlayerData', function(data)

  if type(data) == "table" then
    for name, value in pairs( data ) do
      Player[name] = value
    end
  end

end)
