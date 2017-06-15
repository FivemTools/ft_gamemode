-- @Date:   2017-06-11T23:19:46+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-15T18:42:45+02:00
-- @License: GNU General Public License v3.0

-- Event is emited after client is 100% loded games
RegisterServerEvent('ft:SvFirstJoinProper')
AddEventHandler('ft:SvFirstJoinProper', function()

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
  TriggerClientEvent('ft:ClReady', source)

end)
