-- @Author: samuelds
-- @Date:   2017-06-07T19:24:56+02:00
-- @Project: FiveM Tools
-- @Last modified by:   samuelds
-- @Last modified time: 2017-06-08T23:38:09+02:00
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
function CommandsManager:AddCommand(prefix, permissionLevel, callback, callbackfailed)
  self.commands[prefix] = {
    permissionLevel = permissionLevel, -- Min permision for use this command
    callback = callback, -- Function success
    callbackfailed = callbackfailed, -- Function failed
  }
end
