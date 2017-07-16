-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0

-- Event before player join
AddEventHandler("playerConnecting", function(playerName, setCallback)

  local steamId = getSteamId(source)

  -- Check if player is in player table
  local checkAccess = PlayerIsAllowed(steamId)
  if type(checkAccess) == "string" then
    setCallback(checkAccess .. " (steamId: " .. steamId .. ")")
    CancelEvent()
    return
  else
    TriggerEvent('ft_gamemode:ClFirstJoinProper')
  end

end)

-- Event before player leave
AddEventHandler('playerDropped', function()

  if PlayerExist(source) then
    RemovePlayer(source)
  end

  if TmpPlayerExist(source) then
    RemoveTmpPlayer(source)
  end

end)
