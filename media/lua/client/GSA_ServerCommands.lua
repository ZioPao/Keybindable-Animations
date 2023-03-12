-- Glytch3r's Streaming Animations --

local ServerCommands = {}

ServerCommands.ReceiveAnimVariable = function(args)
    print("RECEIVE ANIM VARIABLE")
    local player = getPlayerByOnlineID(args.playerID)

    local variableName = args.variableName
    local check = args.check
    print(variableName)
    print(check)

    player:setVariable(variableName, check)

end

----------------------------------------------

local function OnServerCommand(module, command, args)
    if module == 'GSA' then
        if ServerCommands[command] then
            args = args or {}
            ServerCommands[command](args)

        end
    end
end

Events.OnServerCommand.Add(OnServerCommand)