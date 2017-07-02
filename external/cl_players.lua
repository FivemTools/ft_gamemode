-- @Date:   2017-06-11T23:19:39+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-02T17:53:18+02:00
-- @License: GNU General Public License v3.0

-- Send client
RegisterNetEvent('ft_gamemode:ClReady')
AddEventHandler('ft_gamemode:ClReady', function()
  Citizen.CreateThread(function()

    TriggerEvent('ft_gamemode:ClLoaded')

  end)
end)

-- Set player data
RegisterNetEvent('ft_gamemode:ClSetPlayerData')
AddEventHandler('ft_gamemode:ClSetPlayerData', function(data)

  if type(data) == "table" then
    for name, value in pairs( data ) do
      Player[name] = value
    end
  end

end)
