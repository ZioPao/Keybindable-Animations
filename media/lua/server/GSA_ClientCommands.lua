-- Roleplay Animations --

local ClientCommands = {}

ClientCommands.SendAnimVariable = function(player, args)

    local playerID = args.playerID

    local variableName = args.variableName
    local check = args.check

    print("KBA: Sending Anim Variable => " .. variableName .. "=" .. check)

    sendServerCommand('KBA', 'ReceiveAnimVariable', {playerID = playerID, variableName = variableName, check = check})


end

---------------------------------------------

local function OnClientCommand(module, command, playerObj, args)
    if module == 'KBA' and ClientCommands[command] then
        ClientCommands[command](playerObj, args)
    end
end

Events.OnClientCommand.Add(OnClientCommand)


