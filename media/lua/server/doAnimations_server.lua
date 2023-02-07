

if isClient() then return; end

local Commands = {}
Commands.GlytchAnimations = {}

Commands.GlytchAnimations.NotifyAnimation = function(player, args)

    -- To every player... so?
    local online_players = getOnlinePlayers()

    if player ~= nil then print("Player exists here") end

    local original_player = getPlayerByOnlineID(args[1])


    print("PRINTING PLAYERS")
    for i = 0, online_players:size() - 1 do
        print(i)
        local other_player = online_players:get(i)
        
        if other_player == nil then
            print(" is nil")
        end

        if other_player ~= original_player then
            sendServerCommand(other_player, "GlytchAnimations", "AcceptNewAnimation", {args[1], args[2]})

        end
    end



end



Events.OnClientCommand.Add(function(module, command, player, args)
	if Commands[module] and Commands[module][command] then
	    Commands[module][command](player, args)
	end
end)