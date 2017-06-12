-- @Date:   2017-06-11T23:20:00+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-11T23:20:01+02:00
-- @License: GNU General Public License v3.0

-- Spawn override
AddEventHandler('onClientMapStart', function()
  Citizen.CreateThread(function()

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()

  end)
end)
