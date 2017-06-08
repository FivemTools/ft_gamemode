-- @Author: samuelds
-- @Date:   2017-05-28T09:34:12+02:00
-- @Project: FiveM Tools
-- @Last modified by:   samuelds
-- @Last modified time: 2017-06-08T23:38:28+02:00
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
