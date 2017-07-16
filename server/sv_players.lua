-- @Date:   2017-06-11T23:19:49+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-02T17:54:13+02:00
-- @License: GNU General Public License v3.0

-- Constructor
PlayersManager = {}
PlayersManager.__index = PlayersManager

-- Meta table for users
setmetatable(PlayersManager, {

  __call = function(self)
    local p = {}
    p.players = {}
    p.playerTmp = {}
    return setmetatable(p, PlayersManager)
  end

})

-- Get All players
function PlayersManager:GetPlayers()

  return self.players

end

-- Get Player infos
function PlayersManager:Get(source)

  return self.players[source]

end

-- Remove for the list player
function PlayersManager:RemovePlayerInList(source)

  self.players[source] = nil

end

-- Check if is in the list player
function PlayersManager:PlayerExistInList(source)

  if (self.players[source] == nil) then
    return false
  else
    return true
  end

end

-- Check if is in the list player
function PlayersManager:PlayerExistInTmpList(source)

  if (self.playerTmp[source] == nil) then
    return false
  else
    return true
  end

end

-- Remove int Tmp list
function PlayersManager:RemovePlayerInTmpList(source)

  self.playerTmp[source] = nil

end

-- Add Player in player list
function PlayersManager:AddPlayerInList(steamId, source)

  self.players[source] = self.playerTmp[steamId]
  self.players[source].source = source
  self.playerTmp[steamId] = nil

end

-- Check if player is allowed for
function PlayersManager:PlayerInAllowed(steamId)

  -- Player
  local player = Player(steamId)
  player:Init() -- Get Player data or create is not exit

  if Config.whitelist ~= nil and Config.whitelist and not player:Get("whitelist") then
    return Config.message.noWhitelist
  elseif not player:Get("ban") then
    self.playerTmp[steamId] = player
    return true
  else
    return Config.message.ban
  end

end

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
