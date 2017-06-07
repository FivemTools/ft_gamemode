-- Spawn override
AddEventHandler('onClientMapStart', function()
  Citizen.CreateThread(function()

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()

  end)
end)
