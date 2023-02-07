--/////////////////////////////////////////////////////////////////////////
--//////////////////////////// Matías N. Salas ////////////////////////////
--///////////////////////////////////////////////////////////////////////// 

local Commands = {};
Commands.GlytchAnimations = {};
Events.OnPlayerUpdate.Add(function(player)
	local playerId = player:getOnlineID()
    if isClient() then

if player:getModData()['act1'] then sendClientCommand('GlytchAnimations', 'isAct1', {isAct1 = true})  else sendClientCommand('GlytchAnimations', 'isAct1', {isAct1 = false}) end
if player:getModData()['act1'] then sendClientCommand('GlytchAnimations', 'isAct2', {isAct2 = true})  else sendClientCommand('GlytchAnimations', 'isAct2', {isAct2 = false}) end
if player:getModData()['act1'] then sendClientCommand('GlytchAnimations', 'isAct3', {isAct3 = true})  else sendClientCommand('GlytchAnimations', 'isAct3', {isAct3 = false}) end
if player:getModData()['act1'] then sendClientCommand('GlytchAnimations', 'isAct4', {isAct4 = true})  else sendClientCommand('GlytchAnimations', 'isAct4', {isAct4 = false}) end
if player:getModData()['act1'] then sendClientCommand('GlytchAnimations', 'isAct5', {isAct5 = true})  else sendClientCommand('GlytchAnimations', 'isAct5', {isAct5 = false}) end

    --sendClientCommand('GlytchAnimations', 'isAct5', {isAct5 = player:getVariableBoolean('isAct5')})
    end
end)

Commands.GlytchAnimations.isAct1 = function(args)
    local source = getPlayer();
    local player = getPlayerByOnlineID(args.id)
    if source ~= player then
        if args.isAct1 then
            player:setVariable('isAct1', 'true');
        else
            player:setVariable('isAct1', 'false');
        end
    end
end
Commands.GlytchAnimations.isAct2 = function(args)
    local source = getPlayer();
    local player = getPlayerByOnlineID(args.id)
    if source ~= player then
        if args.isAct2 then
            player:setVariable('isAct2', 'true');
        else
            player:setVariable('isAct2', 'false');
        end
    end
end
Commands.GlytchAnimations.isAct3 = function(args)
    local source = getPlayer();
    local player = getPlayerByOnlineID(args.id)
    if source ~= player then
        if args.isAct3 then
            player:setVariable('isAct3', 'true');
        else
            player:setVariable('isAct3', 'false');
        end
    end
end
Commands.GlytchAnimations.isAct4 = function(args)
    local source = getPlayer();
    local player = getPlayerByOnlineID(args.id)
    if source ~= player then
        if args.isAct4 then
            player:setVariable('isAct4', 'true');
        else
            player:setVariable('isAct4', 'false');
        end
    end
end
Commands.GlytchAnimations.isAct5 = function(args)
    local source = getPlayer();
    local player = getPlayerByOnlineID(args.id)
    if source ~= player then
        if args.isAct5 then
            player:setVariable('isAct5', 'true');
        else
            player:setVariable('isAct5', 'false');
        end
    end
end
Events.OnServerCommand.Add(function(module, command, args)
	if Commands[module] and Commands[module][command] then
		Commands[module][command](args)
	end
end)