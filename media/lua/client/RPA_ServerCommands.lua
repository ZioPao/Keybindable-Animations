-- Roleplay Animations --

local ServerCommands = {}

ServerCommands.ReceiveAnimVariable = function(args)

    local player = getPlayerByOnlineID(args.playerID)

    local variableName = args.variableName
    local check = args.check

    player:setVariable(variableName, check)

end

----------------------------------------------

local function OnServerCommand(module, command, args)
    if module == 'RPA' then
        if ServerCommands[command] then
            args = args or {}
            ServerCommands[command](args)

        end
    end
end

Events.OnServerCommand.Add(OnServerCommand)