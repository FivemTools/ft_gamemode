-- Event before player join
AddEventHandler("playerConnecting", function(playerName, setCallback)
  local steamId = getSteamId(source)
  -- Check if player is in player table

  if not PlayersManager:PlayerInAllowed(steamId) then
    setCallback(Config.server.noWhitelistMessage .. " (steamId: " .. steamId .. ")")
    CancelEvent()
    return
  end
end)

-- Event before player leave
AddEventHandler('playerDropped', function()
  if PlayersManager:PlayerExistInList(source) then
    PlayersManager:RemovePlayerInList(source)
  end

  if PlayersManager:PlayerExistInTmpList(source) then
    PlayerManger.RemovePlayerInTmpList(source)
  end
end)
