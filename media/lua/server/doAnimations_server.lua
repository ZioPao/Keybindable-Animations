

if isClient() then return; end

local Commands = {};
Commands.GlytchAnimations = {};
local playerId = player:getOnlineID();
    
Commands.GlytchAnimations.isAct1 = function(player, args)
    sendServerCommand('GlytchAnimations', 'isAct1', {id = playerId, isAct1 =  args.isAct1})    
    
end

Commands.GlytchAnimations.isAct2 = function(player, args)
    sendServerCommand('GlytchAnimations', 'isAct2', {id = playerId, isAct2 =  args.isAct2})    
end

Commands.GlytchAnimations.isAct3 = function(player, args)
    sendServerCommand('GlytchAnimations', 'isAct3', {id = playerId, isAct3 =  args.isAct3})    
end      

Commands.GlytchAnimations.isAct4 = function(player, args)
    sendServerCommand('GlytchAnimations', 'isAct4', {id = playerId, isAct4 =  args.isAct4})    
end      

Commands.GlytchAnimations.isAct5 = function(player, args)
    sendServerCommand('GlytchAnimations', 'isAct5', {id = playerId, isAct5 =  args.isAct5})    
end      

Events.OnClientCommand.Add(function(module, command, player, args)
	if Commands[module] and Commands[module][command] then
	    Commands[module][command](player, args)
	end
end)