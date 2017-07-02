-- @Date:   2017-06-11T23:19:42+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-02T17:53:27+02:00
-- @License: GNU General Public License v3.0

-- Simple command no failed callback
RegisterServerEvent('ft_gamemode:SvAddSimpleCommand')
AddEventHandler('ft_gamemode:SvAddSimpleCommand', function(prefix, permissionLevel, callback)

  CommandsManager:AddCommand(prefix, permissionLevel, callback, "")

end)

-- AdvancedC command failed callback
RegisterServerEvent('ft_gamemode:SvAddAdvancedCommand')
AddEventHandler('ft_gamemode:SvAddCommand', function(prefix, permissionLevel, callback, callbackfailed)

  CommandsManager:AddCommand(prefix, permissionLevel, callback, callbackfailed)

end)
