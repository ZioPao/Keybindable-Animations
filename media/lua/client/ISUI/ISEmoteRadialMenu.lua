--***********************************************************
--**                    THE INDIE STONE                    **
--***********************************************************

require "ISUI/ISRadialMenu"

ISEmoteRadialMenu = ISBaseObject:derive("ISEmoteRadialMenu")
if not (getCore():getDebug() or isAdmin()) then return; end 
function ISEmoteRadialMenu:init()
	ISEmoteRadialMenu.defaultMenu = {};
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"] = {};
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].name = getText("IGUI_Emote_AuthenticAnimations");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu = {};
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["Asleep"] = getText("IGUI_Emote_Asleep");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["Awake"] = getText("IGUI_Emote_Awake");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["Sit1"] = getText("IGUI_Emote_Sit");	
	--ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["zedsit"] = getText("IGUI_Emote_Sit");	
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["Tired"] = getText("IGUI_Emote_Tired");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["Scared"] = getText("IGUI_Emote_Spooked");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["Pose"] = getText("IGUI_Emote_Pose");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["bentdouble"] = getText("IGUI_Emote_bentdouble");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["holdbridgenose"] = getText("IGUI_Emote_Facepalm");	
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["Faint"] = getText("IGUI_Emote_Faint");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["Smell"] = getText("IGUI_Emote_Smell");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["Vomit"] = getText("IGUI_Emote_Vomit");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["Crawl"] = getText("IGUI_Emote_Crawl");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimations"].subMenu["Idle"] = getText("IGUI_Emote_idleLoop");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"] = {};
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].name = getText("IGUI_Emote_AuthenticAnimationsExtra");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu = {};	
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["AwakeToAsleep"] = getText("IGUI_Emote_AwakeToAsleep");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["Passout"] = getText("IGUI_Emote_Passout");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["DragDown"] = getText("IGUI_Emote_DragDown");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["Wash"] = getText("IGUI_Emote_Wash");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["Duffelbag"] = getText("IGUI_Emote_Dufflebag");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["Limp"] = getText("IGUI_Emote_Limp");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["LimpAssist"] = getText("IGUI_Emote_LimpAssist");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["Bed"] = getText("IGUI_Emote_Bed");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["Walk"] = getText("IGUI_Emote_???");
	--ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["Sprint002"] = getText("IGUI_Emote_Naruto");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["ScrambleFloorBack"] = getText("IGUI_Emote_ScrambleFloorBack");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["ScrambleFloorIdle"] = getText("IGUI_Emote_ScrambleFloorIdle");
	ISEmoteRadialMenu.defaultMenu["AuthenticAnimationsExtra"].subMenu["ScrambleFloor"] = getText("IGUI_Emote_ScrambleFloor");	
	ISEmoteRadialMenu.defaultMenu["Fitness"] = {};
	ISEmoteRadialMenu.defaultMenu["Fitness"].name = getText("IGUI_Emote_Fitness");
	ISEmoteRadialMenu.defaultMenu["Fitness"].subMenu = {};
	--ISEmoteRadialMenu.defaultMenu["Fitness"].subMenu["Barbell"] = getText("IGUI_Emote_Barbell");
	ISEmoteRadialMenu.defaultMenu["Fitness"].subMenu["Burpees"] = getText("IGUI_Emote_Burpee");
	--ISEmoteRadialMenu.defaultMenu["Fitness"].subMenu["Dumbbel1"] = getText("IGUI_Emote_Dumbbell");
	ISEmoteRadialMenu.defaultMenu["Fitness"].subMenu["BicepCurl"] = getText("IGUI_Emote_BicepCurl");
	ISEmoteRadialMenu.defaultMenu["Fitness"].subMenu["Pushup"] = getText("IGUI_Emote_Pushup");	
	ISEmoteRadialMenu.defaultMenu["Fitness"].subMenu["Situp"] = getText("IGUI_Emote_Situp");	
	ISEmoteRadialMenu.defaultMenu["Fitness"].subMenu["Squat"] = getText("IGUI_Emote_Squat");	
	ISEmoteRadialMenu.defaultMenu["pain"] = {};
	ISEmoteRadialMenu.defaultMenu["pain"].name = getText("IGUI_Emote_pain");
	ISEmoteRadialMenu.defaultMenu["pain"].subMenu = {};
	ISEmoteRadialMenu.defaultMenu["pain"].subMenu["PainHead"] = getText("IGUI_Emote_PainHead");	
	ISEmoteRadialMenu.defaultMenu["pain"].subMenu["Cough"] = getText("IGUI_Emote_Cough");	
	ISEmoteRadialMenu.defaultMenu["pain"].subMenu["PainArmL"] = getText("IGUI_Emote_PainArmL");
	ISEmoteRadialMenu.defaultMenu["pain"].subMenu["PainHandL"] = getText("IGUI_Emote_PainHandL");
	ISEmoteRadialMenu.defaultMenu["pain"].subMenu["PainLegL"] = getText("IGUI_Emote_PainLegL");
	ISEmoteRadialMenu.defaultMenu["pain"].subMenu["PainStomach"] = getText("IGUI_Emote_Stomach");
	ISEmoteRadialMenu.defaultMenu["pain"].subMenu["PainTorso"] = getText("IGUI_Emote_Torso");
	ISEmoteRadialMenu.defaultMenu["pain"].subMenu["PainLegR"] = getText("IGUI_Emote_PainLegR");	
	ISEmoteRadialMenu.defaultMenu["pain"].subMenu["PainHandR"] = getText("IGUI_Emote_PainHandR");
	ISEmoteRadialMenu.defaultMenu["pain"].subMenu["PainArmR"] = getText("IGUI_Emote_PainArmR");	
	ISEmoteRadialMenu.defaultMenu["friendly"] = {};
	ISEmoteRadialMenu.defaultMenu["friendly"].name = getText("IGUI_Emote_Friendly");
	ISEmoteRadialMenu.defaultMenu["friendly"].subMenu = {};	
	ISEmoteRadialMenu.defaultMenu["friendly"].subMenu["wavehi"] = getText("IGUI_Emote_WaveHi");
	ISEmoteRadialMenu.defaultMenu["friendly"].subMenu["wavebye"] = getText("IGUI_Emote_Bye");
	ISEmoteRadialMenu.defaultMenu["friendly"].subMenu["clap"] = getText("IGUI_Emote_Clap");
	ISEmoteRadialMenu.defaultMenu["friendly"].subMenu["thumbsup"] = getText("IGUI_Emote_ThumbsUp");
	ISEmoteRadialMenu.defaultMenu["friendly"].subMenu["thankyou"] = getText("IGUI_Emote_ThankYou");
	ISEmoteRadialMenu.defaultMenu["hostile"] = {};
	ISEmoteRadialMenu.defaultMenu["hostile"].name = getText("IGUI_Emote_Hostile");
	ISEmoteRadialMenu.defaultMenu["hostile"].subMenu = {};
	ISEmoteRadialMenu.defaultMenu["hostile"].subMenu["insult"] = getText("IGUI_Emote_Insult");
	ISEmoteRadialMenu.defaultMenu["hostile"].subMenu["stop"] = getText("IGUI_Emote_Stop");
	ISEmoteRadialMenu.defaultMenu["hostile"].subMenu["surrender"] = getText("IGUI_Emote_Surrender");
	ISEmoteRadialMenu.defaultMenu["hostile"].subMenu["thumbsdown"] = getText("IGUI_Emote_ThumbsDown");
	ISEmoteRadialMenu.defaultMenu["hostile"].subMenu["Smother"] = getText("IGUI_Emote_Smother");
	ISEmoteRadialMenu.defaultMenu["hostile"].subMenu["Smother2"] = getText("IGUI_Emote_SmotherLoop");
	ISEmoteRadialMenu.defaultMenu["hostile"].subMenu["SmotheredLoop"] = getText("IGUI_Emote_SmotheredLoop");
	ISEmoteRadialMenu.defaultMenu["hostile"].subMenu["SmotheredIn"] = getText("IGUI_Emote_SmotheredIn");		
	ISEmoteRadialMenu.defaultMenu["hostile"].subMenu["SmotheredOut"] = getText("IGUI_Emote_SmotheredOut");		
	
	ISEmoteRadialMenu.defaultMenu["group"] = {};
	ISEmoteRadialMenu.defaultMenu["group"].name = getText("IGUI_Emote_Group");
	ISEmoteRadialMenu.defaultMenu["group"].subMenu = {};
	ISEmoteRadialMenu.defaultMenu["group"].subMenu["followme"] = getText("IGUI_Emote_FollowMe");
	ISEmoteRadialMenu.defaultMenu["group"].subMenu["comehere"] = getText("IGUI_Emote_ComeHere");
	ISEmoteRadialMenu.defaultMenu["group"].subMenu["yes"] = getText("IGUI_Emote_Yes");
	ISEmoteRadialMenu.defaultMenu["group"].subMenu["no"] = getText("IGUI_Emote_No");
	ISEmoteRadialMenu.defaultMenu["group"].subMenu["shrug"] = getText("IGUI_Emote_Shrug");
	ISEmoteRadialMenu.defaultMenu["group"].subMenu["undecided"] = getText("IGUI_Emote_Undecided");
	ISEmoteRadialMenu.defaultMenu["signal"] = {};
	ISEmoteRadialMenu.defaultMenu["signal"].name = getText("IGUI_Emote_Signal");
	ISEmoteRadialMenu.defaultMenu["signal"].subMenu = {};
	ISEmoteRadialMenu.defaultMenu["signal"].subMenu["ceasefire"] = getText("IGUI_Emote_CeaseFire");
	ISEmoteRadialMenu.defaultMenu["signal"].subMenu["signalok"] = getText("IGUI_Emote_Ok");
	ISEmoteRadialMenu.defaultMenu["signal"].subMenu["moveout"] = getText("IGUI_Emote_MoveOut");
	ISEmoteRadialMenu.defaultMenu["signal"].subMenu["followbehind"] = getText("IGUI_Emote_FollowBehind");
	ISEmoteRadialMenu.defaultMenu["signal"].subMenu["signalfire"] = getText("IGUI_Emote_Fire");
	ISEmoteRadialMenu.defaultMenu["signal"].subMenu["comefront"] = getText("IGUI_Emote_Come");
	ISEmoteRadialMenu.defaultMenu["signal"].subMenu["salute"] = getText("IGUI_Emote_Salute");
	ISEmoteRadialMenu.defaultMenu["signal"].subMenu["contactR90"] = getText("IGUI_Emote_MoveThere90");

--	ISEmoteRadialMenu.defaultMenu["wavehi"] = {};
--	ISEmoteRadialMenu.defaultMenu["wavehi"].name = "Wave Hi";

	ISEmoteRadialMenu.defaultMenu["shout"] = {};
	ISEmoteRadialMenu.defaultMenu["shout"].name = getText("IGUI_Emote_Shout");
	
	-- some anims can have variant, we'll pick one randomly in this list
	ISEmoteRadialMenu.variants = {};
	ISEmoteRadialMenu.variants["comehere"] = {"comehere", "comehere02"};
	ISEmoteRadialMenu.variants["stop"] = {"stop", "stop02"};
	--ISEmoteRadialMenu.variants["Barbell"] = {"Barbel101", "Barbel102", "Barbel103", "Barbel104"};		
	ISEmoteRadialMenu.variants["Burpees"] = {"Burpees11", "Burpees12"};
	ISEmoteRadialMenu.variants["BicepCurl"] = {"BicepCurl01", "BicepCurl02", "BicepCurl03", "BicepCurl04", "BicepCurl05", "BicepCurl06"};	
	ISEmoteRadialMenu.variants["Bed"] = {"GetInBed", "GetOutBed"};
ISEmoteRadialMenu.variants["clap"] = {"clap", "clap02"};
	--ISEmoteRadialMenu.variants["clap"] = {"zedsit", "zedeat"};
	ISEmoteRadialMenu.variants["Crawl"] = {"Crawl"};
	--ISEmoteRadialMenu.variants["Dumbbel1"] = {"Dumbbel101", "Dumbbel102", "Dumbbel103", "Dumbbel104"};		
	ISEmoteRadialMenu.variants["Duffelbag"] = {"DuffelbagOn", "DuffelbagLoot", "DuffelbagOff"};	
	ISEmoteRadialMenu.variants["Idle"] = {"ShiftWeight", "Burp", "ChewNails"};	
	ISEmoteRadialMenu.variants["Faint"] = {"feelfeint", "Sway"};
	ISEmoteRadialMenu.variants["Passout"] = {"passoutback", "passoutfront", "Fall"};
	ISEmoteRadialMenu.variants["Pose"] = {"Man1", "Man2", "Man3", "Man4", "Man5", "Man6"};
	ISEmoteRadialMenu.variants["Pushup"] = {"Pushup02", "Pushup03"};	
	ISEmoteRadialMenu.variants["salute"] = {"saluteformal", "salutecasual"};
	ISEmoteRadialMenu.variants["Smell"] = {"SmellBad", "SmellGag"};
	ISEmoteRadialMenu.variants["Scared"] = {"Spooked1", "Spooked2", "Shiver"};
	ISEmoteRadialMenu.variants["Situp"] = {"SitUp2", "SitUp3"};
	ISEmoteRadialMenu.variants["Squat"] = {"Squat03", "Squat04"};	
	ISEmoteRadialMenu.variants["Tired"] = {"Yawn", "TStretch"};
	ISEmoteRadialMenu.variants["PainStomach"] = {"PainStomach1", "PainStomach2"};
	ISEmoteRadialMenu.variants["PainHead"] = {"PainHead1", "PainHead2"};
	ISEmoteRadialMenu.variants["Vomit"] = {"Vomit1", "Vomit2"};
	--ISEmoteRadialMenu.variants["Wash"] = {"SitZed", "SitZed2", "EatZed", "EatZed2"};
ISEmoteRadialMenu.variants["Wash"] = {"Drinkfloor", "Washhands", "WashFace"};
	ISEmoteRadialMenu.variants["Walk"] = {"Walk002", "Walk003", "Walk005"};
	ISEmoteRadialMenu.variants["wavehi"] = {"wavehi", "wavehi02", "wavebye"};
	
	ISEmoteRadialMenu.icons = {};
	ISEmoteRadialMenu.icons["Pose"] = getTexture("media/ui/emotes/Pose.png");
	ISEmoteRadialMenu.icons["friendly"] = getTexture("media/ui/emotes/thumbsup.png");
	ISEmoteRadialMenu.icons["hostile"] = getTexture("media/ui/emotes/thumbsdown.png");
	ISEmoteRadialMenu.icons["signal"] = getTexture("media/ui/emotes/moveout.png");
	ISEmoteRadialMenu.icons["group"] = getTexture("media/ui/emotes/followme.png");
	ISEmoteRadialMenu.icons["thumbsup"] = getTexture("media/ui/emotes/thumbsup.png");
	ISEmoteRadialMenu.icons["thumbsdown"] = getTexture("media/ui/emotes/thumbsdown.png");
	ISEmoteRadialMenu.icons["config"] = getTexture("media/ui/emotes/gears.png");
	ISEmoteRadialMenu.icons["Sit1"] = getTexture("media/ui/emotes/chair.png");
	ISEmoteRadialMenu.icons["back"] = getTexture("media/ui/emotes/back.png");
	ISEmoteRadialMenu.icons["wavebye"] = getTexture("media/ui/emotes/wavebye.png");
	ISEmoteRadialMenu.icons["shout"] = getTexture("media/ui/Traits/trait_talkative.png");
	ISEmoteRadialMenu.icons["comefront"] = getTexture("media/ui/emotes/comefromfront.png");
	ISEmoteRadialMenu.icons["comehere"] = getTexture("media/ui/emotes/comehere.png");
	ISEmoteRadialMenu.icons["followme"] = getTexture("media/ui/emotes/followme.png");
	ISEmoteRadialMenu.icons["insult"] = getTexture("media/ui/emotes/insult.png");
	ISEmoteRadialMenu.icons["moveout"] = getTexture("media/ui/emotes/moveout.png");
	ISEmoteRadialMenu.icons["stop"] = getTexture("media/ui/emotes/stop.png");
	ISEmoteRadialMenu.icons["surrender"] = getTexture("media/ui/emotes/surrender.png");
	ISEmoteRadialMenu.icons["ceasefire"] = getTexture("media/ui/emotes/ceasefire.png");
	ISEmoteRadialMenu.icons["clap"] = getTexture("media/ui/emotes/clap.png");
	ISEmoteRadialMenu.icons["signalfire"] = getTexture("media/ui/emotes/fire.png");
	ISEmoteRadialMenu.icons["followbehind"] = getTexture("media/ui/emotes/followbehind.png");
	ISEmoteRadialMenu.icons["freeze"] = getTexture("media/ui/emotes/freeze.png");
	ISEmoteRadialMenu.icons["no"] = getTexture("media/ui/emotes/no.png");
	ISEmoteRadialMenu.icons["salute"] = getTexture("media/ui/emotes/salute.png");
	ISEmoteRadialMenu.icons["shrug"] = getTexture("media/ui/emotes/shrug.png");
	ISEmoteRadialMenu.icons["thankyou"] = getTexture("media/ui/emotes/thankyou.png");
	ISEmoteRadialMenu.icons["undecided"] = getTexture("media/ui/emotes/undecided.png");
	ISEmoteRadialMenu.icons["wavebye"] = getTexture("media/ui/emotes/wavebye.png");
	ISEmoteRadialMenu.icons["wavehi"] = getTexture("media/ui/emotes/wavehello.png");
	ISEmoteRadialMenu.icons["yes"] = getTexture("media/ui/emotes/yes.png");
	ISEmoteRadialMenu.icons["signalok"] = getTexture("media/ui/emotes/yes.png");
	ISEmoteRadialMenu.icons["Asleep"] = getTexture("media/ui/emotes/ZZZ.png")
	ISEmoteRadialMenu.icons["AuthenticAnimations"] = getTexture("media/ui/emotes/AuthenticAnimations.png");	
	ISEmoteRadialMenu.icons["AuthenticAnimationsExtra"] = getTexture("media/ui/emotes/AuthenticAnimationsExtra.png");
	ISEmoteRadialMenu.icons["AwakeToAsleep"] = getTexture("media/ui/emotes/AwakeToAsleep.png");	
	ISEmoteRadialMenu.icons["holdbridgenose"] = getTexture("media/ui/emotes/Facepalm.png");	
	ISEmoteRadialMenu.icons["Idle"] = getTexture("media/ui/emotes/Bored.png");	
	ISEmoteRadialMenu.icons["bentdouble"] = getTexture("media/ui/emotes/Exerted.png");	
	ISEmoteRadialMenu.icons["pain"] = getTexture("media/ui/emotes/Pain.png");	
	ISEmoteRadialMenu.icons["Tired"] = getTexture("media/ui/emotes/Tired.png");	
	ISEmoteRadialMenu.icons["ScrambleFloorBack"] = getTexture("media/ui/emotes/ScrambleBack.png");
	ISEmoteRadialMenu.icons["ScrambleFloor"] = getTexture("media/ui/emotes/Scramble.png");
	ISEmoteRadialMenu.icons["ScrambleFloorIdle"] = getTexture("media/ui/emotes/ScrambleIdle.png");	
	ISEmoteRadialMenu.icons["Smother"] = getTexture("media/ui/emotes/SmotherIn.png");
	ISEmoteRadialMenu.icons["Smother2"] = getTexture("media/ui/emotes/SmotherLoop.png");
	ISEmoteRadialMenu.icons["SmotheredLoop"] = getTexture("media/ui/emotes/Smotheredloop.png");
	ISEmoteRadialMenu.icons["SmotheredIn"] = getTexture("media/ui/emotes/Smothered.png");
	ISEmoteRadialMenu.icons["SmotheredOut"] = getTexture("media/ui/emotes/pillowend.png");
	ISEmoteRadialMenu.icons["Smell"] = getTexture("media/ui/emotes/Sniff.png");	
	ISEmoteRadialMenu.icons["Duffelbag"] = getTexture("media/ui/emotes/duffelbag.png");
	ISEmoteRadialMenu.icons["Fitness"] = getTexture("media/ui/emotes/fitness.png");
	ISEmoteRadialMenu.icons["PainHead"] = getTexture("media/ui/emotes/Head.png");	
	ISEmoteRadialMenu.icons["PainHandR"] = getTexture("media/ui/emotes/Righthand.png");
	ISEmoteRadialMenu.icons["PainHandL"] = getTexture("media/ui/emotes/Lefthand.png");
	ISEmoteRadialMenu.icons["PainArmL"] = getTexture("media/ui/emotes/LeftArm.png");
	ISEmoteRadialMenu.icons["PainArmR"] = getTexture("media/ui/emotes/RightArm.png");
	ISEmoteRadialMenu.icons["PainLegL"] = getTexture("media/ui/emotes/LeftLeg.png");
	ISEmoteRadialMenu.icons["PainLegR"] = getTexture("media/ui/emotes/RightLeg.png");	
	ISEmoteRadialMenu.icons["PainStomach"] = getTexture("media/ui/emotes/Stomach.png");
	ISEmoteRadialMenu.icons["PainTorso"] = getTexture("media/ui/emotes/Torso.png");	
	ISEmoteRadialMenu.icons["Passout"] = getTexture("media/ui/emotes/Passout.png");	
	ISEmoteRadialMenu.icons["Scared"] = getTexture("media/ui/emotes/Scared.png");	
	ISEmoteRadialMenu.icons["Sprint002"] = getTexture("media/ui/emotes/Naruto.png");
	ISEmoteRadialMenu.icons["Vomit"] = getTexture("media/ui/emotes/Sick.png");
	ISEmoteRadialMenu.icons["Walk"] = getTexture("media/ui/emotes/zombie.png");	
	ISEmoteRadialMenu.icons["Wash"] = getTexture("media/ui/emotes/Water.png");	
	ISEmoteRadialMenu.icons["Crawl"] = getTexture("media/ui/emotes/Crawl.png");	
	ISEmoteRadialMenu.icons["Cough"] = getTexture("media/ui/emotes/cough.png");		
	ISEmoteRadialMenu.icons["Bed"] = getTexture("media/ui/emotes/Bed.png");	
	ISEmoteRadialMenu.icons["Faint"] = getTexture("media/ui/emotes/Faint.png");
	ISEmoteRadialMenu.icons["Smell"] = getTexture("media/ui/emotes/Sniff.png");
	ISEmoteRadialMenu.icons["Awake"] = getTexture("media/ui/emotes/SquidAwake.png");
	ISEmoteRadialMenu.icons["Limp"] = getTexture("media/ui/emotes/LimpKate.png");
	ISEmoteRadialMenu.icons["LimpAssist"] = getTexture("media/ui/emotes/LimpBob.png");	
	ISEmoteRadialMenu.icons["Pushup"] = getTexture("media/ui/emotes/pushup.png");
	ISEmoteRadialMenu.icons["Situp"] = getTexture("media/ui/emotes/situp.png");
	ISEmoteRadialMenu.icons["BicepCurl"] = getTexture("media/ui/emotes/BicepCurl.png");
	ISEmoteRadialMenu.icons["Burpees"] = getTexture("media/ui/emotes/Burpee.png");	
	ISEmoteRadialMenu.icons["Squat"] = getTexture("media/ui/emotes/squat.png");	
	ISEmoteRadialMenu.icons["DragDown"] = getTexture("media/ui/emotes/DragDown.png");	
	ISEmoteRadialMenu.icons["contactR90"] = getTexture("media/ui/emotes/MoveThere90.png");
	
	ISEmoteRadialMenu.menu = ISEmoteRadialMenu.defaultMenu;
end

function ISEmoteRadialMenu:new(character)
	local o = ISBaseObject.new(self)
	o.character = character
	o.playerNum = character:getPlayerNum()
	ISUIEmoteConfig:readFile();
	return o
end

function ISEmoteRadialMenu:display()
	local menu = getPlayerRadialMenu(self.playerNum)
	self:center()
	menu:addToUIManager()
	if JoypadState.players[self.playerNum+1] then
		menu:setHideWhenButtonReleased(Joypad.DPadDown)
		setJoypadFocus(self.playerNum, menu)
		self.character:setJoypadIgnoreAimUntilCentered(true)
	end
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
