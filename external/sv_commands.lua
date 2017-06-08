-- @Author: samuelds
-- @Date:   2017-05-13T19:34:28+02:00
-- @Project: FiveM Tools
-- @Last modified by:   samuelds
-- @Last modified time: 2017-06-08T23:38:46+02:00
-- @License: GNU General Public License v3.0

RegisterServerEvent('ft:SvAddCommand')
AddEventHandler('ft:SvAddCommand', function(prefix, permissionLevel, callback)

  CommandsManager:AddCommand(prefix, permissionLevel, callback)

end)
