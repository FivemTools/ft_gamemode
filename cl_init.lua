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
