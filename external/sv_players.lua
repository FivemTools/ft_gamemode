-- @Date:   2017-06-11T23:19:49+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-11T23:19:50+02:00
-- @License: GNU General Public License v3.0

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
AddEventHandler("ft:SvGetPlayerData", function(source, name, callback)

  local player = PlayersManager:Get(source)
  local data = player[name]
  callback(data)

end)

-- Set Player data
RegisterServerEvent("ft:SvSetPlayerData")
AddEventHandler("ft:SvSetPlayerData", function(source, data)

  -- Send to client
  TriggerClientEvent("ft:ClSetPlayerData", source, data)
  local player = PlayersManager:Get(source)
  player:Set(data)

end)

-- Kick player
RegisterServerEvent("ft:SvKickPlayer")
AddEventHandler("ft:SvKickPlayer", function(source, reason)

  local player = PlayersManager:Get(source)
  player:Kick(reason)

end)
