-- @Project: FiveM Tools
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
    local command = Commands[commandName]
    -- Remove command name
    table.remove(commandArgs, 1)

    -- Check if command exite
    if command ~= nil then

      if command.permissionLevel ~= nil then

        local player = GetPlayer(source)
        if (player.Get("permissionLevel") >= command.permissionLevel) then
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
