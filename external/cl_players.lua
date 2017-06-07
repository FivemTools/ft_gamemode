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