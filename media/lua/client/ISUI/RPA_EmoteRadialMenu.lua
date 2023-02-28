require "ISUI/ISEmoteRadialMenu"



local og_ISEmoteRadialMenuInit = ISEmoteRadialMenu.init

function ISEmoteRadialMenu:init()

    og_ISEmoteRadialMenuInit(self)
	ISEmoteRadialMenu.defaultMenu['RoleplayAnimations'] = {}
end


function ISEmoteRadialMenu:center()
	local menu = getPlayerRadialMenu(self.playerNum)
	
	local x = getPlayerScreenLeft(self.playerNum)
	local y = getPlayerScreenTop(self.playerNum)
	local w = getPlayerScreenWidth(self.playerNum)
	local h = getPlayerScreenHeight(self.playerNum)
	
	x = x + w / 2
	y = y + h / 2
	
	menu:setX(x + menu:getWidth() / 2)
	menu:setY(y - menu:getHeight() / 2)
end

function ISEmoteRadialMenu:fillMenu(submenu)
	local menu = getPlayerRadialMenu(self.playerNum)
	menu:clear()

	local icon = nil;
	if not submenu then -- base menu with all categories
--		menu:addSlice("Friendly", nil, self.fillMenu, self, "friendly")
		for i,v in pairs(ISEmoteRadialMenu.menu) do
			icon = nil;
			if ISEmoteRadialMenu.icons[i] then
				icon = ISEmoteRadialMenu.icons[i];
			end
			if v.subMenu then -- stuff with submenu
				menu:addSlice(v.name, icon, self.fillMenu, self, i)
			else -- stuff for rapid access
				menu:addSlice(v.name, icon, self.emote, self, i)
			end
		end
--		menu:addSlice("Config", ISEmoteRadialMenu.icons["config"], self.configEmote, self)
	else
		for i,v in pairs(ISEmoteRadialMenu.menu[submenu].subMenu) do
			icon = nil;
			if ISEmoteRadialMenu.icons[i] then
				icon = ISEmoteRadialMenu.icons[i];
			end
			menu:addSlice(v, icon, self.emote, self, i)
		end
		menu:addSlice(getText("IGUI_Emote_Back"), ISEmoteRadialMenu.icons["back"], self.fillMenu, self)
	end

	self:display()
end


function ISEmoteRadialMenu:emote(emote) --Randomization 
	-- check for variant of the same anim (like wave hi could be wavehi or wavehi02)
	if ISEmoteRadialMenu.variants[emote] then
		emote = ISEmoteRadialMenu.variants[emote][ZombRand(#ISEmoteRadialMenu.variants[emote])+1];
	end
	self.character:playEmote(emote);
	if emote == "shout" then
		self.character:Callout(false);
	end
end

function ISEmoteRadialMenu:configEmote()
	local ui = ISUIEmoteConfig:new(0, 0, self.character);
	ui:initialise();
	ui:addToUIManager();
end

----------------------------------

local STATE = {}
STATE[1] = {}
STATE[2] = {}
STATE[3] = {}
STATE[4] = {}

function ISEmoteRadialMenu.checkKey(key)

	if not (key == getCore():getKey("Emote") or key == getCore():getKey("Shout")) then
		return false
	end
	if UIManager.getSpeedControls() and (UIManager.getSpeedControls():getCurrentGameSpeed() == 0) then
		return false
	end
	local playerObj = getSpecificPlayer(0)
	if not playerObj or playerObj:isDead() then
		return false
	end
	local queue = ISTimedActionQueue.queues[playerObj]
	if queue and #queue.queue > 0 then
		return false
	end
	return true
end

function ISEmoteRadialMenu.onKeyPressed(key)

	if not ISEmoteRadialMenu.checkKey(key) then
		return
	end
	if getCore():getGameMode() == "Tutorial" and key ~= getCore():getKey("Shout") then
		return;
	end
	local radialMenu = getPlayerRadialMenu(0)
	if getCore():getOptionRadialMenuKeyToggle() and radialMenu:isReallyVisible() then
		STATE[1].radialWasVisible = true
		radialMenu:removeFromUIManager()
		return
	end
	STATE[1].keyPressedMS = getTimestampMs()
	STATE[1].radialWasVisible = false
end

function ISEmoteRadialMenu.onKeyRepeat(key)

	if not ISEmoteRadialMenu.checkKey(key) then
		return
	end
	if getCore():getGameMode() == "Tutorial" and key ~= getCore():getKey("Shout") then
		return;
	end
	if STATE[1].radialWasVisible then
		return
	end
	if not STATE[1].keyPressedMS then
		return
	end
	local playerObj = getSpecificPlayer(0);
	local radialMenu = getPlayerRadialMenu(0)
	local delay = 450
	if (getTimestampMs() - STATE[1].keyPressedMS >= delay) and key == getCore():getKey("Emote") and not playerObj:getVehicle() then
		if not radialMenu:isReallyVisible() then
			local frm = ISEmoteRadialMenu:new(playerObj)
			frm:fillMenu()
		end
	end
end

function ISEmoteRadialMenu.onKeyReleased(key)
	if not ISEmoteRadialMenu.checkKey(key) then
		return
	end
	if getCore():getGameMode() == "Tutorial" and key ~= getCore():getKey("Shout") then
		return;
	end
	if not STATE[1].keyPressedMS then
		return
	end
	local playerObj = getSpecificPlayer(0);
	local radialMenu = getPlayerRadialMenu(0)
	if radialMenu:isReallyVisible() or STATE[1].radialWasVisible then
		if not getCore():getOptionRadialMenuKeyToggle() then
			radialMenu:removeFromUIManager()
		end
		return
	end
	
	local delay = 450
	if (getTimestampMs() - STATE[1].keyPressedMS < delay) and key == getCore():getKey("Shout") and not playerObj:getVehicle() then
		playerObj:Callout(true);
	end
end

local function OnGameStart()
	Events.OnKeyStartPressed.Add(ISEmoteRadialMenu.onKeyPressed)
	Events.OnKeyKeepPressed.Add(ISEmoteRadialMenu.onKeyRepeat)
	Events.OnKeyPressed.Add(ISEmoteRadialMenu.onKeyReleased)
end

Events.OnGameStart.Add(OnGameStart)
