-- @Author: samuelds
-- @Date:   2017-06-07T18:52:54+02:00
-- @Project: FiveM Tools
-- @Last modified by:   samuelds
-- @Last modified time: 2017-06-08T23:38:17+02:00
-- @License: GNU General Public License v3.0

-- Spawn override
AddEventHandler('onClientMapStart', function()
  Citizen.CreateThread(function()

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()

  end)
end)
