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

-- Get Player data
function PlayersManager:GetPlayerData(source)
  local player = self:Get(source)
  return player.data
end

function PlayersManager:GetPlayerSkin(source)
  local player = self:Get(source)
  return player.skin
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
  self.players[source].data.source = source
  self.playerTmp[steamId] = nil
end

-- Check if player is allowed for
function PlayersManager:PlayerInAllowed(steamId)

  -- Player
  local player = Player(steamId)
  player:Init() -- Get Player data or create is not exit

  if (not player:Get("ban") and player:Get("whitelist")) or (player:Get("permissionLevel") > 0) then


    self.playerTmp[steamId] = {
      data = player,
    }

    return true
  else
    return false
  end
end
