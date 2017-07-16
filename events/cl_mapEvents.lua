-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0

-- Spawn override
AddEventHandler('onClientMapStart', function()
  Citizen.CreateThread(function()

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()

  end)
end)
