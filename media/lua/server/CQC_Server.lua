if isClient() then return; end

local Commands = {};
Commands.CloseQuarterCombat = {};

function Commands.CloseQuarterCombat.setAnimation(player, args)
	sendServerCommand('CloseQuarterCombat', 'ModeCQC', 
	{
	id = player:getOnlineID(),
	CombatStance = args.CombatStance
	})
end

------------------------               ---------------------------
function Commands.CloseQuarterCombat.ClientListener(module, command, args)
	if Commands[module] and Commands[module][command] then
		Commands[module][command](args)
	end
end
Events.OnClientCommand.Remove(Commands.CloseQuarterCombat.ClientListener)
Events.OnClientCommand.Add(Commands.CloseQuarterCombat.ClientListener)