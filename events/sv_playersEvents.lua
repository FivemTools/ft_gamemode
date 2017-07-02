-- @Date:   2017-06-11T23:20:07+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-02T17:52:33+02:00
-- @License: GNU General Public License v3.0

-- Event before player join
AddEventHandler("playerConnecting", function(playerName, setCallback)

  local steamId = getSteamId(source)

  -- Check if player is in player table
  local checkAccess = PlayersManager:PlayerInAllowed(steamId)
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

  if PlayersManager:PlayerExistInList(source) then
    PlayersManager:RemovePlayerInList(source)
  end

  if PlayersManager:PlayerExistInTmpList(source) then
    PlayerManger.RemovePlayerInTmpList(source)
  end

end)
