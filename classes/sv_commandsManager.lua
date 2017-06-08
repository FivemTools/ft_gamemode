-- Constructor
CommandsManager = {}
CommandsManager.__index = CommandsManager

-- Meta table for users
setmetatable(CommandsManager, {
  __call = function(self)
    local p = {}
    p.commands = {}
    return setmetatable(p, CommandsManager)
  end
})

-- Add commande
function CommandsManager:AddCommand(prefix, permissionLevel, callback)
  self.commands[prefix] = {
    permissionLevel = permissionLevel, -- Min permision for use this command
    callback = callback -- Function
  }
end
