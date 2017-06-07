-- Get all data in player client
function GetPlayerData(value)
  Citizen.CreateThread(function()

    if value ~= nil then
      return Player[value]
    else
      return Player
    end

  end)
end

-- Set data in player client
function SetPlayerData(value1, value2, value3)
  Citizen.CreateThread(function()

    if value3 ~= nil then
      Player[value1][value2] = value3
    else
      Player[value1] = value2
    end

  end)
end
