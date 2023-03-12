-- Roleplay Animations --

local ClientCommands = {}

ClientCommands.SendAnimVariable = function(player, args)

    print("SENDING ANIM VARIABLE")
    local playerID = args.playerID

    local variableName = args.variableName
    local check = args.check


    sendServerCommand('GSA', 'ReceiveAnimVariable', {playerID = playerID, variableName = variableName, check = check})


end

---------------------------------------------

local function OnClientCommand(module, command, playerObj, args)
    if module == 'GSA' and ClientCommands[command] then
        ClientCommands[command](playerObj, args)
    end
end

Events.OnClientCommand.Add(OnClientCommand)


