-- KeyBindable Animations --


require "ISUI/ISEmoteRadialMenu"



local og_ISEmoteRadialMenuInit = ISEmoteRadialMenu.init

function ISEmoteRadialMenu:init()
	og_ISEmoteRadialMenuInit(self)


	-- ELectric boogaloo time

	ISEmoteRadialMenu.menu.Sit = {}
	ISEmoteRadialMenu.menu.Sit.name = getText("IGUI_Emote_SitMenu")







	ISEmoteRadialMenu.menu.RoleplayAnimations = {};
	ISEmoteRadialMenu.menu.RoleplayAnimations.name = getText("IGUI_Emote_RoleplayAnimations")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu = {}
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu["Asleep"] = getText("IGUI_Emote_Asleep")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu["Awake"] = getText("IGUI_Emote_Awake")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu["Sit1"] = getText("IGUI_Emote_Sit")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu.Yawn = getText("IGUI_Emote_Yawn")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu.TStretch = getText("IGUI_Emote_TStretch")



	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu["Tired"] = getText("IGUI_Emote_Tired")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu["Scared"] = getText("IGUI_Emote_Spooked")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu["Pose"] = getText("IGUI_Emote_Pose")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu["bentdouble"] = getText("IGUI_Emote_bentdouble") -- FIXME we're missing the icon
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu.Facepalm = getText("IGUI_Emote_Facepalm")


	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu.FeelFaint = getText("IGUI_Emote_FeelFaint")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu.Sway = getText("IGUI_Emote_Sway")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu.SmellGroup = getText("IGUI_Emote_Smell")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu.ChewNails = getText("IGUI_Emote_ChewNails")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu.ShiftWeight = getText("IGUI_Emote_ShiftWeight")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu.Burp = getText("IGUI_Emote_Burp")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu.DrinkFloor = getText("IGUI_Emote_DrinkFloor")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu.WashFace = getText("IGUI_Emote_WashFace")
	ISEmoteRadialMenu.menu.RoleplayAnimations.subMenu.WashHands = getText("IGUI_Emote_WashHands")




	------------------------------------------------

	ISEmoteRadialMenu.menu.InteractiveAnimations = {}
	ISEmoteRadialMenu.menu.InteractiveAnimations.name = getText("IGUI_Emote_RPInteractiveAnimations")
	ISEmoteRadialMenu.menu.InteractiveAnimations.subMenu = {}
	ISEmoteRadialMenu.menu.InteractiveAnimations.subMenu.Crawl = getText("IGUI_Emote_Crawl")
	ISEmoteRadialMenu.menu.InteractiveAnimations.subMenu.ZombieInteractive = getText("IGUI_Emote_Zombie")
	ISEmoteRadialMenu.menu.InteractiveAnimations.subMenu.LimpInteractive = getText("IGUI_Emote_Limp")
	ISEmoteRadialMenu.menu.InteractiveAnimations.subMenu.InjuryInteractive = getText("IGUI_Emote_Injured")
	

	------------------------------------------------

	ISEmoteRadialMenu.menu.LoopedAnimations = {}
	ISEmoteRadialMenu.menu.LoopedAnimations.name = getText("IGUI_Emote_RPLoopedAnimations")
	ISEmoteRadialMenu.menu.LoopedAnimations.subMenu = {}
	ISEmoteRadialMenu.menu.LoopedAnimations.subMenu.VomitStart = getText("IGUI_Emote_Vomit")


	------------------------------------------------

	ISEmoteRadialMenu.menu.FitnessAnimations = {}
	ISEmoteRadialMenu.menu.FitnessAnimations.name = getText("IGUI_Emote_Fitness")
	ISEmoteRadialMenu.menu.FitnessAnimations.subMenu = {}
	ISEmoteRadialMenu.menu.FitnessAnimations.subMenu.BurpeesGroup = getText("IGUI_Emote_Burpee")
	ISEmoteRadialMenu.menu.FitnessAnimations.subMenu.BicepCurlGroup = getText("IGUI_Emote_BicepCurl")
	ISEmoteRadialMenu.menu.FitnessAnimations.subMenu.PushupGroup = getText("IGUI_Emote_Pushup")
	ISEmoteRadialMenu.menu.FitnessAnimations.subMenu.SitupGroup = getText("IGUI_Emote_Situp")
	ISEmoteRadialMenu.menu.FitnessAnimations.subMenu.SquatGroup = getText("IGUI_Emote_Squat")


	------------------------------------------------

	ISEmoteRadialMenu.menu.PainAnimations = {}
	ISEmoteRadialMenu.menu.PainAnimations.name = getText("IGUI_Emote_pain")
	ISEmoteRadialMenu.menu.PainAnimations.subMenu = {}
	ISEmoteRadialMenu.menu.PainAnimations.subMenu.PainHeadGroup = getText("IGUI_Emote_PainHead")
	ISEmoteRadialMenu.menu.PainAnimations.subMenu.Cough = getText("IGUI_Emote_Cough")
	ISEmoteRadialMenu.menu.PainAnimations.subMenu.PainArmL = getText("IGUI_Emote_PainArmL")
	ISEmoteRadialMenu.menu.PainAnimations.subMenu.PainHandL = getText("IGUI_Emote_PainHandL")
	ISEmoteRadialMenu.menu.PainAnimations.subMenu["PainLegL"] = getText("IGUI_Emote_PainLegL")
	ISEmoteRadialMenu.menu.PainAnimations.subMenu.PainStomachGroup = getText("IGUI_Emote_Stomach")
	ISEmoteRadialMenu.menu.PainAnimations.subMenu["PainTorso"] = getText("IGUI_Emote_Torso")
	ISEmoteRadialMenu.menu.PainAnimations.subMenu["PainLegR"] = getText("IGUI_Emote_PainLegR")
	ISEmoteRadialMenu.menu.PainAnimations.subMenu["PainHandR"] = getText("IGUI_Emote_PainHandR")
	ISEmoteRadialMenu.menu.PainAnimations.subMenu["PainArmR"] = getText("IGUI_Emote_PainArmR")


	------------------------------------------------

	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra = {}
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.name = getText("IGUI_Emote_RoleplayAnimationsExtra")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu = {}
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["AwakeToAsleep"] = getText("IGUI_Emote_AwakeToAsleep")

	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu.PassoutBack = getText("IGUI_Emote_PassoutBack")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu.PassoutFront = getText("IGUI_Emote_PassoutFront")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu.Fall = getText("IGUI_Emote_Fall")





	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["DragDown"] = getText("IGUI_Emote_DragDown")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["Duffelbag"] = getText("IGUI_Emote_Dufflebag")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["Limp"] = getText("IGUI_Emote_Limp")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["LimpAssist"] = getText("IGUI_Emote_LimpAssist")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["Asleep"] = getText("IGUI_Emote_Bed")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["Walk"] = getText("IGUI_Emote_???")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["Z_Eat"] = getText("IGUI_Emote_ZEat")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["Z_Lunge"] = getText("IGUI_Emote_ZLunge")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["Z_LayIdle"] = getText("IGUI_Emote_ZLayIdle")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["ScrambleFloorBack"] = getText(
	"IGUI_Emote_ScrambleFloorBack")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["ScrambleFloorIdle"] = getText(
	"IGUI_Emote_ScrambleFloorIdle")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["ScrambleFloor"] = getText("IGUI_Emote_ScrambleFloor")






	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["Smother"] = getText("IGUI_Emote_Smother")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["Smother2"] = getText("IGUI_Emote_SmotherLoop")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["SmotheredLoop"] = getText("IGUI_Emote_SmotheredLoop")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["SmotheredIn"] = getText("IGUI_Emote_SmotheredIn")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["SmotheredOut"] = getText("IGUI_Emote_SmotheredOut")
	ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["contactR90"] = getText("IGUI_Emote_MoveThere90")

	-----------------------------------------
	-- VARIANTS


	-- Fitness
	ISEmoteRadialMenu.variants.BicepCurlGroup = { "BicepCurl01", "BicepCurl02", "BicepCurl03", "BicepCurl04",
		"BicepCurl05", "BicepCurl06" }
	ISEmoteRadialMenu.variants.BurpeesGroup = { "Burpees11", "Burpees12" }
	ISEmoteRadialMenu.variants.PushupGroup = { "Pushup02", "Pushup03" }
	ISEmoteRadialMenu.variants.SquatGroup = { "Squat03", "Squat04" }
	ISEmoteRadialMenu.variants.SitupGroup = { "SitUp2", "SitUp3" }


	-- Roleplay Anims
	ISEmoteRadialMenu.variants.SmellGroup = { "SmellBad", "SmellGag" }
	ISEmoteRadialMenu.variants.DrinkFloor = { "DrinkFloor" }

	-- Pain
	ISEmoteRadialMenu.variants.PainHeadGroup = { "PainHead1" }
	ISEmoteRadialMenu.variants.PainStomachGroup = { "PainStomach1", "PainStomach2" }




	ISEmoteRadialMenu.variants["Crawl"] = { "Crawl" }
	ISEmoteRadialMenu.variants["Duffelbag"] = { "DuffelbagOn", "DuffelbagLoot", "DuffelbagOff" }
	ISEmoteRadialMenu.variants["Idle"] = { "ShiftWeight", "Burp", "ChewNails" }



	ISEmoteRadialMenu.variants["Faint"] = { "feelfeint", "Sway" }
	--ISEmoteRadialMenu.variants["Passout"] = { "passoutback", "passoutfront", "Fall" }
	ISEmoteRadialMenu.variants["Pose"] = { "Man1", "Man2", "Man3", "Man4", "Man5", "Man6" }
	ISEmoteRadialMenu.variants["salute"] = { "saluteformal", "salutecasual" }
	ISEmoteRadialMenu.variants["Scared"] = { "Spooked1", "Spooked2", "Shiver" }
	ISEmoteRadialMenu.variants["Tired"] = { "Yawn", "TStretch" }
	--ISEmoteRadialMenu.variants["Vomit"] = {"Vomit1", "Vomit2"}
	--ISEmoteRadialMenu.variants["Wash"] = { "Washhands", "WashFace" } -- TODO DrinkFloor is here

	ISEmoteRadialMenu.variants["Walk"] = { "Walk002", "Walk003", "Walk005" }
	ISEmoteRadialMenu.variants["Z_Eat"] = { "Z_Eat1", "Z_Eat2" }
	ISEmoteRadialMenu.variants["Z_LayIdle"] = { "Z_LayIdle1", "Z_LayIdle2" }
	ISEmoteRadialMenu.variants["Z_Lunge"] = { "Z_Lunge1", "Z_Lunge2", "Z_Lunge3" }


	-----------------
	ISEmoteRadialMenu.icons.RoleplayAnimations = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["Idle"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons.SmellGroup = getTexture("media/ui/emotes/smell_ico.png")
	ISEmoteRadialMenu.icons.Faint = getTexture("media/ui/emotes/faint_ico.png")
	ISEmoteRadialMenu.icons.Facepalm = getTexture('media/ui/emotes/facepalm_ico.png')
	ISEmoteRadialMenu.icons.bentdouble = getTexture("media/ui/emotes/bentdouble_ico.png") -- FIXME missing icon
	ISEmoteRadialMenu.icons["Pose"] = getTexture("media/ui/emotes/pose_ico.png")
	ISEmoteRadialMenu.icons["Scared"] = getTexture("media/ui/emotes/scared_ico.png")
	ISEmoteRadialMenu.icons.Tired = getTexture("media/ui/emotes/tired_ico.png")
	ISEmoteRadialMenu.icons.TStretch = getTexture("media/ui/emotes/stretch_ico.png")
	ISEmoteRadialMenu.icons.Yawn = getTexture("media/ui/emotes/yawn_ico.png")
	ISEmoteRadialMenu.icons.FeelFaint = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons.WashFace = getTexture("media/ui/emotes/wash_ico.png")
	ISEmoteRadialMenu.icons.WashHands = getTexture("media/ui/emotes/wash_ico.png")
	ISEmoteRadialMenu.icons.Sway = getTexture("media/ui/emotes/sway_ico.png")

	ISEmoteRadialMenu.icons["Sit1"] = getTexture("media/ui/emotes/sit_ico.png")
	ISEmoteRadialMenu.icons.Awake = getTexture("media/ui/emotes/awake_ico.png")
	ISEmoteRadialMenu.icons["Asleep"] = getTexture("media/ui/emotes/bed_ico.png")
	ISEmoteRadialMenu.icons.ChewNails = getTexture("media/ui/emotes/chewnails_ico.png")
	ISEmoteRadialMenu.icons.ShiftWeight = getTexture("media/ui/emotes/shift_ico.png") 
	ISEmoteRadialMenu.icons.Burp = getTexture("media/ui/emotes/burp_ico.png")    
	ISEmoteRadialMenu.icons.DrinkFloor = getTexture("media/ui/emotes/drinkonfloor_ico.png")




	ISEmoteRadialMenu.icons.RoleplayAnimationsExtra = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["AwakeToAsleep"] = getTexture("media/ui/emotes/KBA_test_ico.png")


	ISEmoteRadialMenu.icons.PainAnimations = getTexture("media/ui/emotes/sick_ico.png")
	ISEmoteRadialMenu.icons.PainHeadGroup = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["PainHandR"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["PainHandL"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["PainArmL"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["PainArmR"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["PainLegL"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["PainLegR"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons.PainStomachGroup = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons.Cough = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["PainTorso"] = getTexture("media/ui/emotes/KBA_test_ico.png")




	ISEmoteRadialMenu.icons["ScrambleFloorBack"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["ScrambleFloor"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["ScrambleFloorIdle"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["Smother"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["Smother2"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["SmotheredLoop"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["SmotheredIn"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["SmotheredOut"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons.Smell = getTexture("media/ui/emotes/smell_ico.png")
	ISEmoteRadialMenu.icons["Duffelbag"] = getTexture("media/ui/emotes/KBA_test_ico.png")



	ISEmoteRadialMenu.icons.FitnessAnimations = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons.PushupGroup = getTexture("media/ui/emotes/pushup_ico.png")
	ISEmoteRadialMenu.icons.SitupGroup = getTexture("media/ui/emotes/situp_ico.png")
	ISEmoteRadialMenu.icons.BicepCurlGroup = getTexture("media/ui/emotes/bicepcurl_ico.png")
	ISEmoteRadialMenu.icons.BurpeesGroup = getTexture("media/ui/emotes/burpee_ico.png")
	ISEmoteRadialMenu.icons.SquatGroup = getTexture("media/ui/emotes/squat_ico.png")


	ISEmoteRadialMenu.icons.PassoutFront = getTexture("media/ui/emotes/passout_ico.png")
	ISEmoteRadialMenu.icons.PassoutBack = getTexture("media/ui/emotes/passout_ico.png")
	ISEmoteRadialMenu.icons.Fall = getTexture("media/ui/emotes/passout_ico.png")




	ISEmoteRadialMenu.icons.VomitStart = getTexture("media/ui/emotes/vomit_ico.png")
	ISEmoteRadialMenu.icons["Walk"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["Z_Eat"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["Z_LayIdle"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["Z_Lunge"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons.Wash = getTexture("media/ui/emotes/wash_ico.png")
	ISEmoteRadialMenu.icons.Crawl = getTexture("media/ui/emotes/crawl_ico.png")
	ISEmoteRadialMenu.icons["Bed"] = getTexture("media/ui/emotes/KBA_test_ico.png")

	ISEmoteRadialMenu.icons["Limp"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons["LimpAssist"] = getTexture("media/ui/emotes/KBA_test_ico.png")

	ISEmoteRadialMenu.icons["DragDown"] = getTexture("media/ui/emotes/dragdown_ico.png")
	ISEmoteRadialMenu.icons["contactR90"] = getTexture("media/ui/emotes/KBA_test_ico.png")



	ISEmoteRadialMenu.icons.LoopedAnimations = getTexture("media/ui/emotes/KBA_test_ico.png")
	ISEmoteRadialMenu.icons.InteractiveAnimations = getTexture("media/ui/emotes/KBA_test_ico.png")



end



local og_ISEmoteRadialMenuEmote = ISEmoteRadialMenu.emote

function ISEmoteRadialMenu:emote(emote)
	if not KBA_Handler.CheckEmote(emote) then
		og_ISEmoteRadialMenuEmote(self, emote)
	end

end
