-- @Date:   2017-06-11T23:20:20+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-11T23:20:21+02:00
-- @License: GNU General Public License v3.0

-- Constructor
Player = {}
Player.__index = Player

-- Meta table for users
setmetatable(Player, {

  __call = function(self, steamId, source)
    local p = {}
    p.source = source
    p.steamId = steamId
    p.data = {}
    return setmetatable(p, Player)
  end

})

-- Get All datas
function Player:GetDatas()

  return self.data

end

-- Get Data
function Player:Get(name)

  return self.data[name]

end

-- Set Data
function Player:Set(data)

  for name, value in pairs(data) do
    self.data[name] = value
  end
  self:Save(data)

end

-- Select player in database
function Player:SelectPlayerInDB()

  local steamId = self.steamId
  local result = MySQL.Sync.fetchAll("SELECT * FROM players WHERE steamId = @steamId", { ['@steamId'] = self.steamId } )
  return result[1]

 end

-- Create player in database
function Player:CreatePlayerInDB()

  local date = os.date("%Y-%m-%d %X")
  local result = MySQL.Sync.execute("INSERT INTO players (`steamId`, `createdAt`) VALUES (@steamId, @date)", { ['@steamId'] = self.steamId, ['@date'] = date } )
  return result

end

-- Get or create player data
function Player:Init()

  local player = self:SelectPlayerInDB()

  if player == nil then

    print("[Info] Player not exit in database")

    local insertPlayer = self:CreatePlayerInDB()
    if insertPlayer then
      player = self:SelectPlayerInDB()
    else
      print("[ERROR] Insertion failed for steamId : " .. steamId)
    end
  end

  self.data = player

end

-- Save specific data or all data
function Player:Save(data)

  data = data or self.data
  local str_query = ""
  local count = 0

  for column, value in pairs(data) do
    if column ~= "id" and column ~= "steamId" and column ~= "createdAt" and column ~= "source" then
      if count ~= 0 then
        str_query = str_query .. ", "
      end

      str_query = str_query .. tostring(column) .. " = " .. tostring(value)
      count = count + 1
    end
  end

  MySQL.Sync.execute("UPDATE players SET " .. str_query .. " WHERE steamId = @steamId", { ['@steamId'] = self.steamId } )

end

-- Kicks a player with specified reason
function Player:Kick(reason)

  DropPlayer(self.source, reason)

end
