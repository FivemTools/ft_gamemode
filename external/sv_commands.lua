RegisterServerEvent('ft:SvAddCommand')
AddEventHandler('ft:SvAddCommand', function(prefix, permissionLevel, callback)

  CommandsManager:AddCommand(prefix, permissionLevel, callback)

end)
