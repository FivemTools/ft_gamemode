-- @Date:   2017-05-28T09:34:12+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-02T17:52:43+02:00
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
      TriggerServerEvent('ft_gamemode:SvFirstJoinProper') -- send to server
      TriggerEvent('ft_gamemode:ClFirstJoinProper') -- send to client

      -- Set text in menu
      if Config.name ~= nil then
        Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), "FE_THDR_GTAO", Config.name)
      end

      break
    end
  end
end)