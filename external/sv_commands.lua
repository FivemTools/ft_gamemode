-- @Author: samuelds
-- @Date:   2017-05-13T19:34:28+02:00
-- @Project: FiveM Tools
-- @Last modified by:
-- @Last modified time: 2017-06-09T13:14:09+02:00
-- @License: GNU General Public License v3.0

-- Simple command no failed callback
RegisterServerEvent('ft:SvAddSimpleCommand')
AddEventHandler('ft:SvAddSimpleCommand', function(prefix, permissionLevel, callback)

  CommandsManager:AddCommand(prefix, permissionLevel, callback, nil)

end)

-- AdvancedC command failed callback
RegisterServerEvent('ft:SvAddAdvancedCommand')
AddEventHandler('ft:SvAddCommand', function(prefix, permissionLevel, callback, callbackfailed)

  CommandsManager:AddCommand(prefix, permissionLevel, callback, callbackfailed)

end)
