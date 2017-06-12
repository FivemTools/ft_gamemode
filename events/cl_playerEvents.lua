-- @Date:   2017-06-12T11:01:14+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-12T11:07:28+02:00
-- @License: GNU General Public License v3.0

AddEventHandler("playerSpawned", function()
  Citizen.CreateThread(function()

    local playerPed = GetPlayerPed(-1)

    -- Enable pvp
    if Config.server.pvp then
      NetworkSetFriendlyFireOption(true)
      SetCanAttackFriendly(playerPed, true, true)
    end

  end)
end)
