require "ISUI/ISEmoteRadialMenu"



local og_ISEmoteRadialMenuInit = ISEmoteRadialMenu.init

function ISEmoteRadialMenu:init()

    og_ISEmoteRadialMenuInit(self)

	ISEmoteRadialMenu.menu["AuthenticAnimations"] = {};
	ISEmoteRadialMenu.menu["AuthenticAnimations"].name = getText("IGUI_Emote_AuthenticAnimations")

	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu = {}
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["Asleep"] = getText("IGUI_Emote_Asleep")
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["Awake"] = getText("IGUI_Emote_Awake")
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["Sit1"] = getText("IGUI_Emote_Sit")
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["Tired"] = getText("IGUI_Emote_Tired")
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["Scared"] = getText("IGUI_Emote_Spooked")
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["Pose"] = getText("IGUI_Emote_Pose")
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["bentdouble"] = getText("IGUI_Emote_bentdouble")
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["holdbridgenose"] = getText("IGUI_Emote_Facepalm")
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["Faint"] = getText("IGUI_Emote_Faint")
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["Smell"] = getText("IGUI_Emote_Smell")
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["Vomit"] = getText("IGUI_Emote_Vomit")
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["Crawl"] = getText("IGUI_Emote_Crawl")
	ISEmoteRadialMenu.menu["AuthenticAnimations"].subMenu["Idle"] = getText("IGUI_Emote_Idle")

	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"] = {}
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].name = getText("IGUI_Emote_AuthenticAnimationsExtra")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu = {}
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["AwakeToAsleep"] = getText("IGUI_Emote_AwakeToAsleep")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["Passout"] = getText("IGUI_Emote_Passout")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["DragDown"] = getText("IGUI_Emote_DragDown")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["Wash"] = getText("IGUI_Emote_Wash")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["Duffelbag"] = getText("IGUI_Emote_Dufflebag")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["Limp"] = getText("IGUI_Emote_Limp")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["LimpAssist"] = getText("IGUI_Emote_LimpAssist")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["Bed"] = getText("IGUI_Emote_Bed")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["Walk"] = getText("IGUI_Emote_???")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["Z_Eat"]= getText("IGUI_Emote_ZEat")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["Z_Lunge"] = getText("IGUI_Emote_ZLunge")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["Z_LayIdle"] = getText("IGUI_Emote_ZLayIdle")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["ScrambleFloorBack"] = getText("IGUI_Emote_ScrambleFloorBack")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["ScrambleFloorIdle"] = getText("IGUI_Emote_ScrambleFloorIdle")
	ISEmoteRadialMenu.menu["AuthenticAnimationsExtra"].subMenu["ScrambleFloor"] = getText("IGUI_Emote_ScrambleFloor")


	ISEmoteRadialMenu.menu["Fitness"] = {}
	ISEmoteRadialMenu.menu["Fitness"].name = getText("IGUI_Emote_Fitness")
	ISEmoteRadialMenu.menu["Fitness"].subMenu = {}
	--ISEmoteRadialMenu.menu["Fitness"].subMenu["Barbell"] = getText("IGUI_Emote_Barbell");
	ISEmoteRadialMenu.menu["Fitness"].subMenu["Burpees"] = getText("IGUI_Emote_Burpee")
	--ISEmoteRadialMenu.menu["Fitness"].subMenu["Dumbbel1"] = getText("IGUI_Emote_Dumbbell");
	ISEmoteRadialMenu.menu["Fitness"].subMenu["BicepCurl"] = getText("IGUI_Emote_BicepCurl")
	ISEmoteRadialMenu.menu["Fitness"].subMenu["Pushup"] = getText("IGUI_Emote_Pushup")
	ISEmoteRadialMenu.menu["Fitness"].subMenu["Situp"] = getText("IGUI_Emote_Situp")
	ISEmoteRadialMenu.menu["Fitness"].subMenu["Squat"] = getText("IGUI_Emote_Squat")


	ISEmoteRadialMenu.menu["pain"] = {}
	ISEmoteRadialMenu.menu["pain"].name = getText("IGUI_Emote_pain")
	ISEmoteRadialMenu.menu["pain"].subMenu = {}
	ISEmoteRadialMenu.menu["pain"].subMenu["PainHead"] = getText("IGUI_Emote_PainHead")
	ISEmoteRadialMenu.menu["pain"].subMenu["Cough"] = getText("IGUI_Emote_Cough")
	ISEmoteRadialMenu.menu["pain"].subMenu["PainArmL"] = getText("IGUI_Emote_PainArmL")
	ISEmoteRadialMenu.menu["pain"].subMenu["PainHandL"] = getText("IGUI_Emote_PainHandL")
	ISEmoteRadialMenu.menu["pain"].subMenu["PainLegL"] = getText("IGUI_Emote_PainLegL")
	ISEmoteRadialMenu.menu["pain"].subMenu["PainStomach"] = getText("IGUI_Emote_Stomach")
	ISEmoteRadialMenu.menu["pain"].subMenu["PainTorso"] = getText("IGUI_Emote_Torso")
	ISEmoteRadialMenu.menu["pain"].subMenu["PainLegR"] = getText("IGUI_Emote_PainLegR")
	ISEmoteRadialMenu.menu["pain"].subMenu["PainHandR"] = getText("IGUI_Emote_PainHandR")
	ISEmoteRadialMenu.menu["pain"].subMenu["PainArmR"] = getText("IGUI_Emote_PainArmR")

	ISEmoteRadialMenu.menu["hostile"].subMenu["Smother"] = getText("IGUI_Emote_Smother")
	ISEmoteRadialMenu.menu["hostile"].subMenu["Smother2"] = getText("IGUI_Emote_SmotherLoop")
	ISEmoteRadialMenu.menu["hostile"].subMenu["SmotheredLoop"] = getText("IGUI_Emote_SmotheredLoop")
	ISEmoteRadialMenu.menu["hostile"].subMenu["SmotheredIn"] = getText("IGUI_Emote_SmotheredIn")
	ISEmoteRadialMenu.menu["hostile"].subMenu["SmotheredOut"] = getText("IGUI_Emote_SmotheredOut")
	ISEmoteRadialMenu.menu["signal"].subMenu["contactR90"] = getText("IGUI_Emote_MoveThere90")

	ISEmoteRadialMenu.variants["Burpees"] = {"Burpees11", "Burpees12"}
	ISEmoteRadialMenu.variants["BicepCurl"] = {"BicepCurl01", "BicepCurl02", "BicepCurl03", "BicepCurl04", "BicepCurl05", "BicepCurl06"}
	ISEmoteRadialMenu.variants["Crawl"] = {"Crawl"}
	--ISEmoteRadialMenu.variants["Dumbbel1"] = {"Dumbbel101", "Dumbbel102", "Dumbbel103", "Dumbbel104"};		
	ISEmoteRadialMenu.variants["Duffelbag"] = {"DuffelbagOn", "DuffelbagLoot", "DuffelbagOff"}
	ISEmoteRadialMenu.variants["Idle"] = {"ShiftWeight", "Burp", "ChewNails"}
	ISEmoteRadialMenu.variants["Faint"] = {"feelfeint", "Sway"}
	ISEmoteRadialMenu.variants["Passout"] = {"passoutback", "passoutfront", "Fall"}
	ISEmoteRadialMenu.variants["Pose"] = {"Man1", "Man2", "Man3", "Man4", "Man5", "Man6"}
	ISEmoteRadialMenu.variants["Pushup"] = {"Pushup02", "Pushup03"}	
	ISEmoteRadialMenu.variants["salute"] = {"saluteformal", "salutecasual"}
	ISEmoteRadialMenu.variants["Smell"] = {"SmellBad", "SmellGag"}
	ISEmoteRadialMenu.variants["Scared"] = {"Spooked1", "Spooked2", "Shiver"}
	ISEmoteRadialMenu.variants["Situp"] = {"SitUp2", "SitUp3"}
	ISEmoteRadialMenu.variants["Squat"] = {"Squat03", "Squat04"}
	ISEmoteRadialMenu.variants["Tired"] = {"Yawn", "TStretch"}
	ISEmoteRadialMenu.variants["PainStomach"] = {"PainStomach1", "PainStomach2"}
	ISEmoteRadialMenu.variants["PainHead"] = {"PainHead1", "PainHead2"}
	ISEmoteRadialMenu.variants["Vomit"] = {"Vomit1", "Vomit2"}
	ISEmoteRadialMenu.variants["Wash"] = {"Drinkfloor", "Washhands", "WashFace"}
	ISEmoteRadialMenu.variants["Walk"] = {"Walk002", "Walk003", "Walk005"}
	ISEmoteRadialMenu.variants["Z_Eat"] = {"Z_Eat1", "Z_Eat2"}
	ISEmoteRadialMenu.variants["Z_LayIdle"] = {"Z_LayIdle1", "Z_LayIdle2"}
	ISEmoteRadialMenu.variants["Z_Lunge"] = {"Z_Lunge1", "Z_Lunge2", "Z_Lunge3"}

	ISEmoteRadialMenu.icons["Pose"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Sit1"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Asleep"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["AuthenticAnimations"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["AuthenticAnimationsExtra"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["AwakeToAsleep"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["holdbridgenose"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Idle"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["bentdouble"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["pain"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Tired"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["ScrambleFloorBack"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["ScrambleFloor"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["ScrambleFloorIdle"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Smother"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Smother2"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["SmotheredLoop"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["SmotheredIn"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["SmotheredOut"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Smell"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Duffelbag"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Fitness"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["PainHead"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["PainHandR"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["PainHandL"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["PainArmL"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["PainArmR"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["PainLegL"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["PainLegR"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["PainStomach"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["PainTorso"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Passout"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Scared"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Vomit"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Walk"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Z_Eat"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Z_LayIdle"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Z_Lunge"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Wash"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Crawl"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Cough"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Bed"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Faint"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Smell"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Awake"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Limp"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["LimpAssist"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Pushup"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Situp"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["BicepCurl"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Burpees"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["Squat"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["DragDown"] = getTexture("media/ui/emotes/test.png")
	ISEmoteRadialMenu.icons["contactR90"] = getTexture("media/ui/emotes/test.png")

end
