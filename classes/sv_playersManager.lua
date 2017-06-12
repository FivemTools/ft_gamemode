-- @Date:   2017-06-11T23:20:24+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-11T23:20:26+02:00
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

  if Config.server.whitelist and not player:Get("whitelist") then
    return Config.message.noWhitelist
  elseif not player:Get("ban") then
    self.playerTmp[steamId] = player
    return true
  else
    return Config.message.ban
  end

end
