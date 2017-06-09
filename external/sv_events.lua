-- @Author: samuelds
-- @Date:   2017-06-07T18:47:34+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-09T12:44:48+02:00
-- @License: GNU General Public License v3.0

-- Register command
RegisterServerEvent('ft:SvAddCommand')
AddEventHandler('ft:SvAddCommand', function(prefix, permissionLevel, callback)

  CommandsManager:AddCommand(prefix, permissionLevel, callback)

end)

-- Get All players
RegisterServerEvent("ft:SvGetPlayers")
AddEventHandler("ft:SvGetPlayers", function(callback)

  local players = PlayersManager:GetPlayers()
  callback(players)

end)

-- Get All player data
RegisterServerEvent("ft:SvGetPlayer")
AddEventHandler("ft:SvGetPlayer", function(source, callback)

  local player = PlayersManager:Get(source)
  callback(player)

end)

-- Get Player infos
RegisterServerEvent("ft:SvGetPlayerData")
AddEventHandler("ft:SvGetPlayerData", function(source, array, callback)

  local player = PlayersManager:Get(source)
  local data = player[array]
  callback(data)

end)

-- Set Player data
RegisterServerEvent("ft:SvSetPlayerData")
AddEventHandler("ft:SvSetPlayerData", function(source, array, data)

  -- Send to client
  TriggerClientEvent("ft:ClSetPlayerData", source, array, data)

  local player = PlayersManager:Get(source)
  local setData = player[array]

  setData:Set(data)

end)

-- Kick player
RegisterServerEvent("ft:SvKickPlayer")
AddEventHandler("ft:SvKickPlayer", function(source, reason)

  local player = PlayersManager:GetPlayerData(source)
  player:Kick(reason)

end)

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

  -- Data
  local playerData = player.data
  playerData = playerData.data
  playerData.steamId = nil
  playerData.createdAt = nil
  playerData.ban = nil
  playerData.whitelist = nil

  TriggerClientEvent("ft:ClSetPlayerData", source, playerData)

  -- Send source
  TriggerClientEvent("ft:ClSetPlayerData", source, { source = source })

  TriggerClientEvent('ft:ClientReady', source)

end)
