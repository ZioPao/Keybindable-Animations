--/////////////////////////////////////////////////////////////////////////
--//////////////////////////// Matías N. Salas ////////////////////////////
--///////////////////////////////////////////////////////////////////////// 
---@version 5.1 Kahlua

local Commands = {};
Commands.CloseQuarterCombat = {};

function Commands.CloseQuarterCombat.doCombo()
local pl = getPlayer() 
    local act = pl:getModData()
	act['CombatStance'] = act['CombatStance'] or "chop"
    local roll = ZombRand(0,11)
    local move = tostring(act['CombatStance'])

        if roll == 1 then  move = 'bash'
    elseif roll == 2 then  move = 'straight'
    elseif roll == 3 then  move = 'jab'
    elseif roll == 4 then  move = 'smash'
    elseif roll == 5 then  move = 'headbutt'
    elseif roll == 6 then  move = 'elbow'
    elseif roll == 7 then  move = 'haymaker'
    elseif roll == 8 then  move = 'uppercut'
    elseif roll == 9 then  move = 'hook'
    elseif roll == 0 then  move = 'chop'
    end
		--pl:setVariable('CombatStance', move)
		--pl:getModData()['CombatStance'] = move
	act['CombatStance'] = tostring(move)
	getPlayer():Say(tostring(move)) 
    return  move
end


-- function stanceChange(pl, wpn)     
-- local atk = tostring(Commands.CloseQuarterCombat.doCombo())
-- pl:setHaloNote(tostring(atk)) 
        -- if pl:getVariableBoolean('ModeCQC') == false then
            -- pl:setVariable('ModeCQC', 'true'); 
            -- if isClient() then
                -- sendClientCommand('CloseQuarterCombat', 'ModeCQC', {CombatStance = atk})
            -- end
        -- end
-- end



Events.OnPlayerUpdate.Add(function(player)
    if not player:getModData()['CombatStance'] == nil then
    local stance = Commands.CloseQuarterCombat.doCombo()

        if player:getVariableBoolean('ModeCQC') == false then
            player:setVariable('ModeCQC', 'true');
        end
    else
        if player:getVariableBoolean('ModeCQC') == true then
            player:setVariable('ModeCQC', 'false');
        end
    end    
    if isClient() then
        local args = {id = player, CombatStance = stance}
        sendClientCommand('CloseQuarterCombat', 'ModeCQC', args)
    end
end)


function Commands.CloseQuarterCombat.CQC(args)
    local source = getPlayer();
    local player = getPlayerByOnlineID(args.id)

    if source ~= player then
        if args.CombatStance then
            player:setVariable('ModeCQC', 'true');
        else
            player:setVariable('ModeCQC', 'false');
        end
    end
end



Events.OnServerCommand.Add(function(module, command, args)
	if Commands[module] and Commands[module][command] then
		Commands[module][command](args)
	end
end)