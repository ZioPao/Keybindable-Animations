-- Glytch3r's Streaming Animations --

local specialEmotes = {
	CrawlInteractive = "isRPCrawling",
	ZombieInteractive = "isRPZombie",
	LimpInteractive = "isRPLimping",
	InjuryInteractive = "isRPInjured"
}

-- Since I'm a goddamn idiot and I really don't wanna make a BaseTimedAction, let's use this 	horrendeous workaround
local staticEmotes = {
	DrinkFloor = 5
}


KBA_Handler = {}
KBA_Handler.currentAnimation = nil
KBA_Handler.chosenValue = nil

KBA_Handler.CheckEmote = function(emote)
	local player = getPlayer()
	local staticAnimVarName = 'shouldRunStaticAnim'

	-------- STATIC EMOTES -------------
	for k, vTime in pairs(staticEmotes) do
		if emote == k then
			print(vTime)
			KBA_Handler.currentAnimation = emote
			player:playEmote(emote)
			player:setBlockMovement(true)

			timer:Simple(vTime, function()
				player:setBlockMovement(false)
			end)
			return true
		end
	end


	-- In case we passed the first loop, let's check special animations such as crawling
	KBA_Handler.chosenValue = nil

	for key, value in pairs(specialEmotes) do
		if key == emote then
			KBA_Handler.chosenValue = value
		else
			-- TODO We should resert everything all at once instead of relying on a loop to prevent potential issues
			if not isClient() and not isServer() then
				player:setVariable(value, "false")
			else
				sendClientCommand(player, 'KBA', 'SendAnimVariable',
				{ playerID = player:getOnlineID(), variableName = value, check = 'false' })
			end
		end
	end



	if KBA_Handler.chosenValue then
		if not isClient() and not isServer() then
			local previousCheck = player:getVariableBoolean(KBA_Handler.chosenValue)
			print(previousCheck)
			local newCheck
			if previousCheck then
				newCheck = 'false'
			else
				newCheck = 'true'
			end

			player:setVariable(KBA_Handler.chosenValue, newCheck)
		else
			-- TODO Can we get getVariable from here for an online player?
			sendClientCommand(player, 'KBA', 'SendAnimVariable',
			{ playerID = player:getOnlineID(), variableName = KBA_Handler.chosenValue, check = 'true' })
		end


		return true
	end

	return false
end