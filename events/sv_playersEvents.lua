-- Event before player join
AddEventHandler("playerConnecting", function(playerName, setCallback)
  local steamId = getSteamId(source)
  -- Check if player is in player table

  local checkAccess = PlayersManager:PlayerInAllowed(steamId)
  if type(checkAccess) == "string" then
    setCallback(checkAccess .. " (steamId: " .. steamId .. ")")
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
