-- @Date:   2017-06-11T23:20:05+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-11T23:20:05+02:00
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
    -- Remove command name
    table.remove(commandArgs, 1)

    -- Check if command exite
    if command ~= nil then

      if command.permissionLevel ~= nil then

        local player = PlayersManager:Get(source)
        if (player:Get("permissionLevel") >= command.permissionLevel) then
          command.callback(source, commandArgs)
        elseif (command.callbackFailed ~= nil and command.callbackFailed ~= '') then
          command.callbackfailed(source, commandName)
        else
          TriggerClientEvent('chatMessage', source, 'SYSTEM', {255, 0, 0}, Config.message.notPermissionLevel)
        end

      end

    end

    CancelEvent()
  end

end)
