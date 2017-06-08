-- @Author: samuelds
-- @Date:   2017-05-28T09:34:12+02:00
-- @Project: FiveM Tools
-- @Last modified by:   samuelds
-- @Last modified time: 2017-06-08T23:39:09+02:00
-- @License: GNU General Public License v3.0

-- Init player --
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)

    -- Complet join this server
    if NetworkIsSessionStarted() then

      -- Players --
      Player = {}

      -- Events --
      TriggerServerEvent('ft:FirstJoinProper') -- send to server
      TriggerEvent('ft:FirstJoinProper') -- send to client

      -- Set text in menu
      Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), "FE_THDR_GTAO", Config.server.name)

      break
    end
  end
end)
