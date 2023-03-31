-- Glytch3r's Streaming Animations --

local specialEmotes = {
	CrawlInteractive = "isRPCrawling",
	ScrambleBackInteractive = "isRPScramblingBack",
	ZombieInteractive = "isRPZombie",
	ScrambleInteractive = "isRPScrambling",
	LimpInteractive = "isRPLimping",
	--InjuryInteractive = "isRPInjured"
	-- Injury is a special case, again. We're just gonna have a looped emote
}

-- Since I'm a goddamn idiot and I really don't wanna make a BaseTimedAction, let's use this 	horrendeous workaround
local staticEmotes = {
	DrinkFloor = {
		time = 5,
		firstPhaseBlock = true,
		secondPhaseBlock = false

	},
	DragDown = {
		time = 4,
		firstPhaseBlock = true,
		secondPhaseBlock = true,
		secondPhaseAnim = "DeadBody",

	},
	PassoutFront = {
		time = 2.1,
		firstPhaseBlock = true,
		secondPhaseBlock = true,
		secondPhaseAnim = "DeadBodyOnFront",		-- TODO This is wrong
	},

	PassoutBack = {
		time = 3,
		firstPhaseBlock = true,
		secondPhaseBlock = true,
		secondPhaseAnim = "DeadBody",
	},
	Fall = {
		time = 1.3,
		firstPhaseBlock = true,
		secondPhaseBlock = true,
		secondPhaseAnim = "DeadBodyOnFront",
	},
	AwakeToAsleep = {
		time = 1,
		firstPhaseBlock = true,
		secondPhaseBlock = true,
		secondPhaseAnim = "Asleep"
	}


}


KBA_Handler = {}
KBA_Handler.currentAnimation = nil
KBA_Handler.chosenValue = nil

KBA_Handler.StopAnimation = function(player)
	if not isClient() and not isServer() then
		if KBA_Handler.chosenValue then
			player:setVariable(KBA_Handler.chosenValue, false)
			KBA_Handler.chosenValue = nil
		else
			player:setVariable("EmotePlaying", false)
		end
	else
		if KBA_Handler.chosenValue then
			sendClientCommand(player, "KBA", "SendAnimVariable", { playerID = player:getOnlineID(), variableName = KBA_Handler.chosenValue, check = 'false' })
			KBA_Handler.chosenValue = nil
		else
			sendClientCommand(player, "KBA", "SendAnimVariable", { playerID = player:getOnlineID(), variableName = "EmotePlaying", check = 'false' })
		end
	end
	player:setBlockMovement(false)
end

KBA_Handler.CheckEmote = function(emote)
	local player = getPlayer()
	getPlayer():setVariable("EmotePlaying", true)


	-------- STATIC EMOTES -------------
	for k, vStatic in pairs(staticEmotes) do
		if emote == k then

			local time = vStatic.time
			local shouldBlockFirstPhase = vStatic.firstPhaseBlock
			local shouldBlockSecondPhase = vStatic.secondPhaseBlock
			local secondEmote = vStatic.secondPhaseAnim



			print(time)
			KBA_Handler.currentAnimation = emote
			player:playEmote(emote)
			player:setBlockMovement(shouldBlockFirstPhase)

			timer:Simple(time, function()
				player:setBlockMovement(shouldBlockSecondPhase)

				if secondEmote then
					print("KBA: starting second emote")
					player:playEmote(secondEmote)
				end

			end)
			return true
		end
	end

	------------------------------------------------------

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
		print("KBA: found special emote => " .. KBA_Handler.chosenValue)

		
		-- if KBA_Handler.chosenValue == "isRPCrawling" or KBA_Handler.chosenValue == "isRPScrambling" or KBA_Handler.chosenValue == "isRPScramblingBack" then
		-- 	getPlayer():setSneaking(true)
		-- end




		if not isClient() and not isServer() then
			local previousCheck = player:getVariableBoolean(KBA_Handler.chosenValue)
			--print(previousCheck)
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