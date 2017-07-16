-- @Date:   2017-06-11T23:20:17+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-11T23:20:18+02:00
-- @License: GNU General Public License v3.0

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
function CommandsManager:AddCommand(prefix, permissionLevel, callback, callbackFailed)

  self.commands[prefix] = {
    permissionLevel = permissionLevel, -- Min permision for use this command
    callback = callback, -- Function success
    callbackFailed = callbackFailed, -- Function failed
  }

end
