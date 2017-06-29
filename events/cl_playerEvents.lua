-- @Date:   2017-06-12T11:01:14+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-25T16:15:35+02:00
-- @License: GNU General Public License v3.0

AddEventHandler("playerSpawned", function()
  Citizen.CreateThread(function()

    local playerPed = GetPlayerPed(-1)

    if Config.pvp ~= nil and Config.pvp then
      NetworkSetFriendlyFireOption(true)
      SetCanAttackFriendly(playerPed, true, true)
    end

  end)
end)

AddEventHandler("ft:ClFirstJoinProper", function()
  Citizen.CreateThread(function()

    if Config.dispatch.cop ~= nil and Config.dispatch.cop then
      Citizen.InvokeNative(0xDC0F817884CDD856, 1, false) -- Police Automobile
      Citizen.InvokeNative(0xDC0F817884CDD856, 2, false) -- Police Helicopter
      Citizen.InvokeNative(0xDC0F817884CDD856, 6, false) -- Police Riders
      Citizen.InvokeNative(0xDC0F817884CDD856, 7, false) -- Police Vehicle
      Citizen.InvokeNative(0xDC0F817884CDD856, 8, false) -- Police RoadBlock
      Citizen.InvokeNative(0xDC0F817884CDD856, 13, false) -- Police Boat
      Citizen.InvokeNative(0xDC0F817884CDD856, 4, false) -- Swat Automobile
      Citizen.InvokeNative(0xDC0F817884CDD856, 12, false) -- Swat Helicopter
      Citizen.InvokeNative(0xDC0F817884CDD856, 14, false) -- Army Vehicle
    end

    if Config.dispatch.gang ~= nil and Config.dispatch.gang then
      Citizen.InvokeNative(0xDC0F817884CDD856, 11, false)
    end

    if Config.dispatch.biker ~= nil and Config. dispatch.biker then
      Citizen.InvokeNative(0xDC0F817884CDD856, 15, false)
    end

    if Config. dispatch.ambulance ~= nil and Config. dispatch.ambulance then
      Citizen.InvokeNative(0xDC0F817884CDD856, 5, false)
    end

    if Config.dispatch.fireDepartment ~= nil and Config. dispatch.fireDepartment then
      Citizen.InvokeNative(0xDC0F817884CDD856, 3, false)
    end

    while true do
      Citizen.Wait(0)

      local playerId = PlayerId()

      if Config.traffic ~= nil and Config.traffic >= 0.0 and Config.traffic <= 1.0 then
        if Config.traffic == 1.0 then
          Config.traffic = 0.9999999
        end
        SetVehicleDensityMultiplierThisFrame(Config.traffic)
      end

      if Config.pedDensity ~= nil and Config.pedDensity >= 0.0 and Config.pedDensity <= 1.0 then
        if Config.pedDensity == 1.0 then
          Config.pedDensity = 0.9999999
        end
        SetPedDensityMultiplierThisFrame(Config.pedDensity)
      end

      if Config.everyIgnores ~= nil and Config.everyIgnores then
        SetEveryoneIgnorePlayer(playerId, true)
      end

      if Config.policeIgnores ~= nil and Config.policeIgnores then
        SetPoliceIgnorePlayer(playerId, true)
        SetDispatchCopsForPlayer(playerId, false)
      end

      if Config.noWantedLevel ~= nil and Config.noWantedLevel then
        SetMaxWantedLevel(0)
      end

      if Config.vehicleRewards ~= nil and Config.vehicleRewards then
        DisablePlayerVehicleRewards(playerId)
      end
          
      if Config.pedScenario ~= nil and Config.pedScenario then
	SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
      end

    end

  end)
end)
