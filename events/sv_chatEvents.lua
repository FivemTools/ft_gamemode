-- @Author: samuelds
-- @Date:   2017-05-10T23:34:27+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-09T13:09:33+02:00
-- @License: GNU General Public License v3.0

-- Recive chat message
AddEventHandler('chatMessage', function(source, n, message)

  -- Check if "/" is fist character
  if (firstString(message, "/")) then

    -- Get args commandes
    local commandArgs = stringSplit(message, " ")

    -- Get name commande
    local commandName = string.gsub(commandArgs[1], "/", "")
    -- Get command
    local command = CommandsManager.commands[commandName]

    -- Check if command exite
    if command ~= nil then
      if command.permissionLevel ~= nil then
        local player = PlayersManager:GetPlayerData(source)

        if (player:Get("permissionLevel") >= command.permissionLevel) then
          command.callback(source, commandArgs)
        elseif (command.callbackfailed ~= nil and command.callbackfailed ~= '') then
          command.callbackfailed(source, commandArgs)
        end
      end
    end

    CancelEvent()
  end

end)
