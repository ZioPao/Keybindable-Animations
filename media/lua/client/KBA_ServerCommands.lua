-- KeyBindable Animations

local ServerCommands = {}

ServerCommands.ReceiveAnimVariable = function(args)
    --print("RECEIVE ANIM VARIABLE")
    local player = getPlayerByOnlineID(args.playerID)

    local variableName = args.variableName
    local check = args.check

    print("KBA: Received Anim Variable => " .. variableName .. "=" .. tostring(check))

    if player then
        player:setVariable(variableName, check)
    else
        print("KBA: player is not reachable")
    end

end

----------------------------------------------

local function OnServerCommand(module, command, args)
    if module == 'KBA' then
        if ServerCommands[command] then
            args = args or {}
            ServerCommands[command](args)

        end
    end
end

Events.OnServerCommand.Add(OnServerCommand)