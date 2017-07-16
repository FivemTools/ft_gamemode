-- @Date:   2017-06-11T23:19:49+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-02T17:54:13+02:00
-- @License: GNU General Public License v3.0

-- Get All players
RegisterServerEvent("ft_gamemode:SvGetPlayers")
AddEventHandler("ft_gamemode:SvGetPlayers", function(callback)

  local players = PlayersManager:GetPlayers()
  callback(players)

end)

-- Get All player data
RegisterServerEvent("ft_gamemode:SvGetPlayer")
AddEventHandler("ft_gamemode:SvGetPlayer", function(source, callback)

  local player = PlayersManager:Get(source)
  callback(player)

end)

-- Get Player infos
RegisterServerEvent("ft_gamemode:SvGetPlayerData")
AddEventHandler("ft_gamemode:SvGetPlayerData", function(source, name, callback)

  local player = PlayersManager:Get(source)
  local data = player[name]
  callback(data)

end)

-- Set Player data
RegisterServerEvent("ft_gamemode:SvSetPlayerData")
AddEventHandler("ft_gamemode:SvSetPlayerData", function(source, data)

  -- Send to client
  TriggerClientEvent("ft_gamemode:ClSetPlayerData", source, data)
  local player = PlayersManager:Get(source)
  player:Set(data)

end)

-- Kick player
RegisterServerEvent("ft_gamemode:SvKickPlayer")
AddEventHandler("ft_gamemode:SvKickPlayer", function(source, reason)

  local player = PlayersManager:Get(source)
  player:Kick(reason)

end)
