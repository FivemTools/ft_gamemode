-- @Author: samuelds
-- @Date:   2017-06-07T18:47:34+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-10T18:30:28+02:00
-- @License: GNU General Public License v3.0

-- Event is emited after client is 100% loded games
RegisterServerEvent('ft:FirstJoinProper')
AddEventHandler('ft:FirstJoinProper', function()

  local steamId = getSteamId(source)

  -- Add player in player table
  if not PlayersManager:PlayerExistInList(source) then
    PlayersManager:AddPlayerInList(steamId, source)
  end

  -- Send to player
  local player = PlayersManager:Get(source)
  playerData = player.data
  playerData.steamId = nil
  playerData.createdAt = nil
  playerData.ban = nil
  playerData.whitelist = nil
  playerData.source = player.source

  -- Send to player client
  TriggerClientEvent("ft:ClSetPlayerData", source, playerData)

  -- Send client ready
  TriggerClientEvent('ft:ClientReady', source)

end)
