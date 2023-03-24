-- KeyBindable Animations --


require "ISUI/ISEmoteRadialMenu"



local og_ISEmoteRadialMenuInit = ISEmoteRadialMenu.init

function ISEmoteRadialMenu:init()
	og_ISEmoteRadialMenuInit(self)

	-- TODO add Stop emote in the base menu

	ISEmoteRadialMenu.menu.sitMenu = {}
	ISEmoteRadialMenu.menu.sitMenu.name = getText("IGUI_Emote_SitMenu")
	ISEmoteRadialMenu.menu.sitMenu.subMenu = {}
	ISEmoteRadialMenu.menu.sitMenu.subMenu.Asleep = getText("IGUI_Emote_Asleep")			-- TODO Slow down anim
	ISEmoteRadialMenu.menu.sitMenu.subMenu.Awake = getText("IGUI_Emote_Awake")				-- TODO Slow down anim
	ISEmoteRadialMenu.menu.sitMenu.subMenu.AwakeToAsleep = getText("IGUI_Emote_AwakeToAsleep")		-- FIXME Broken!
	ISEmoteRadialMenu.menu.sitMenu.subMenu.Sit1 = getText("IGUI_Emote_Sit")					-- TODO Slow down anim


	ISEmoteRadialMenu.icons.sitMenu = getTexture("media/ui/emotes/sit/sitMenu_ico.png")
	ISEmoteRadialMenu.icons.Awake = getTexture("media/ui/emotes/sit/awake_ico.png")
	ISEmoteRadialMenu.icons.AwakeToAsleep = getTexture("media/ui/emotes/sit/awaketosleep_ico.png")
	ISEmoteRadialMenu.icons.Asleep = getTexture("media/ui/emotes/sit/sleep_ico.png")
	ISEmoteRadialMenu.icons.Sit1 = getTexture("media/ui/emotes/sit/sit_ico.png")


	-------------------------------------------------------------------------------------------------
	ISEmoteRadialMenu.menu.negativeMenu = {}
	ISEmoteRadialMenu.menu.negativeMenu.name = getText("IGUI_Emote_NegativeMenu")
	ISEmoteRadialMenu.menu.negativeMenu.subMenu = {}
	ISEmoteRadialMenu.menu.negativeMenu.subMenu.bentdouble = getText("IGUI_Emote_bentdouble")
	ISEmoteRadialMenu.menu.negativeMenu.subMenu.DragDown = getText("IGUI_Emote_DragDown")
	ISEmoteRadialMenu.menu.negativeMenu.subMenu.Fall = getText("IGUI_Emote_Fall")
	ISEmoteRadialMenu.menu.negativeMenu.subMenu.FeelFaint = getText("IGUI_Emote_FeelFaint")
	ISEmoteRadialMenu.menu.negativeMenu.subMenu.PassoutBack = getText("IGUI_Emote_PassoutBack")		--FIXME This is broken
	ISEmoteRadialMenu.menu.negativeMenu.subMenu.PassoutFront = getText("IGUI_Emote_PassoutFront")	-- FIXME This is broken
	ISEmoteRadialMenu.menu.negativeMenu.subMenu.VomitStart = getText("IGUI_Emote_VomitStart")
	ISEmoteRadialMenu.menu.negativeMenu.subMenu.VomitLoop = getText("IGUI_Emote_VomitLoop")
	ISEmoteRadialMenu.menu.negativeMenu.subMenu.ScaredGroup = getText("IGUI_Emote_Scared")
	ISEmoteRadialMenu.menu.negativeMenu.subMenu.TStretch = getText("IGUI_Emote_Tired")
	ISEmoteRadialMenu.menu.negativeMenu.subMenu.Yawn = getText("IGUI_Emote_Yawn")
	ISEmoteRadialMenu.menu.negativeMenu.subMenu.Cough = getText("IGUI_Emote_Cough")

	ISEmoteRadialMenu.variants.ScaredGroup = { "Spooked1", "Spooked2", "Shiver" }


	ISEmoteRadialMenu.icons.negativeMenu = getTexture("media/ui/emotes/negative/negativeMenu_ico.png")
	ISEmoteRadialMenu.icons.PassoutBack = getTexture("media/ui/emotes/negative/passoutFront_ico.png")
	ISEmoteRadialMenu.icons.PassoutFront = getTexture("media/ui/emotes/negative/passoutBack_ico.png")
	ISEmoteRadialMenu.icons.Fall = getTexture("media/ui/emotes/negative/falldown_ico.png")
	ISEmoteRadialMenu.icons.DragDown = getTexture("media/ui/emotes/negative/dragdown_ico.png")
	ISEmoteRadialMenu.icons.VomitStart = getTexture("media/ui/emotes/negative/vomit_ico.png")
	ISEmoteRadialMenu.icons.VomitLoop = getTexture("media/ui/emotes/negative/vomit_ico.png")
	ISEmoteRadialMenu.icons.ScaredGroup = getTexture("media/ui/emotes/negative/scared_ico.png")
	ISEmoteRadialMenu.icons.bentdouble = getTexture("media/ui/emotes/negative/bentover_ico.png")
	ISEmoteRadialMenu.icons.FeelFaint = getTexture("media/ui/emotes/negative/faint_ico.png")
	ISEmoteRadialMenu.icons.Yawn = getTexture("media/ui/emotes/negative/yawn_ico.png")
	ISEmoteRadialMenu.icons.Cough = getTexture("media/ui/emotes/negative/cough_ico.png")
	ISEmoteRadialMenu.icons.TStretch = getTexture("media/ui/emotes/negative/tired_ico.png")


	--------------------------------------------------------------------------------------------------
	ISEmoteRadialMenu.menu.zombieMenu = {}
	ISEmoteRadialMenu.menu.zombieMenu.name = getText("IGUI_Emote_ZombieMenu")
	ISEmoteRadialMenu.menu.zombieMenu.subMenu = {}
	ISEmoteRadialMenu.menu.zombieMenu.subMenu.Z_Eat = getText("IGUI_Emote_ZEat")
	ISEmoteRadialMenu.menu.zombieMenu.subMenu.Z_LayIdle = getText("IGUI_Emote_ZLayIdle")
	--ISEmoteRadialMenu.menu.zombieMenu.subMenu.Z_Lunge = getText("IGUI_Emote_ZombieLungeInt")
	ISEmoteRadialMenu.menu.zombieMenu.subMenu.ZombieInteractive = getText("IGUI_Emote_ZombieInt")



	ISEmoteRadialMenu.variants.Z_Eat = { "Z_Eat1", "Z_Eat2" }
	ISEmoteRadialMenu.variants.Z_LayIdle = { "Z_LayIdle1", "Z_LayIdle2" }
	ISEmoteRadialMenu.variants.Z_Lunge = { "Z_Lunge1"}
	
	ISEmoteRadialMenu.icons.zombieMenu = getTexture("media/ui/emotes/zombie/zombieMenu_ico.png")
	ISEmoteRadialMenu.icons.Z_Eat = getTexture("media/ui/emotes/zombie/zedeat_ico.png")
	ISEmoteRadialMenu.icons.Z_LayIdle = getTexture("media/ui/emotes/zombie/zedgroundidle_ico.png")
	ISEmoteRadialMenu.icons.Z_Lunge = getTexture("media/ui/emotes/zombie/zedlunge_ico.png")
	ISEmoteRadialMenu.icons.ZombieInteractive = getTexture("media/ui/emotes/zombie/zombieInteractive_ico.png")

	----------------------------------------------------------------------------------------------------

	ISEmoteRadialMenu.menu.painMenu = {}
	ISEmoteRadialMenu.menu.painMenu.name = getText("IGUI_Emote_PainMenu")
	ISEmoteRadialMenu.menu.painMenu.subMenu = {}
	ISEmoteRadialMenu.menu.painMenu.subMenu.PainHeadGroup = getText("IGUI_Emote_PainHead")
	ISEmoteRadialMenu.menu.painMenu.subMenu.PainStomachGroup = getText("IGUI_Emote_Stomach")

	ISEmoteRadialMenu.menu.painMenu.subMenu.PainArmR = getText("IGUI_Emote_PainArmR")
	ISEmoteRadialMenu.menu.painMenu.subMenu.PainHandR = getText("IGUI_Emote_PainHandR")
	ISEmoteRadialMenu.menu.painMenu.subMenu.PainLegR = getText("IGUI_Emote_PainLegR")

	ISEmoteRadialMenu.menu.painMenu.subMenu.PainTorso = getText("IGUI_Emote_Torso")

	ISEmoteRadialMenu.menu.painMenu.subMenu.PainLegL = getText("IGUI_Emote_PainLegL")
	ISEmoteRadialMenu.menu.painMenu.subMenu.PainHandL = getText("IGUI_Emote_PainHandL")
	ISEmoteRadialMenu.menu.painMenu.subMenu.PainArmL = getText("IGUI_Emote_PainArmL")






	ISEmoteRadialMenu.variants.PainHeadGroup = { "PainHead1" }
	ISEmoteRadialMenu.variants.PainStomachGroup = { "PainStomach1", "PainStomach2" }

	ISEmoteRadialMenu.icons.painMenu = getTexture("media/ui/emotes/pain/painMenu_ico.png")
	ISEmoteRadialMenu.icons.PainHeadGroup = getTexture("media/ui/emotes/pain/painhead_ico.png")
	ISEmoteRadialMenu.icons.PainHandR = getTexture("media/ui/emotes/pain/painRhand_ico.png")
	ISEmoteRadialMenu.icons.PainHandL = getTexture("media/ui/emotes/pain/painLhand_ico.png")
	ISEmoteRadialMenu.icons.PainArmL = getTexture("media/ui/emotes/pain/painLarm_ico.png")
	ISEmoteRadialMenu.icons.PainArmR = getTexture("media/ui/emotes/pain/painRarm_ico.png")
	ISEmoteRadialMenu.icons.PainLegL = getTexture("media/ui/emotes/pain/painLleg_ico.png")
	ISEmoteRadialMenu.icons.PainLegR = getTexture("media/ui/emotes/pain/painRleg_ico.png")
	ISEmoteRadialMenu.icons.PainStomachGroup = getTexture("media/ui/emotes/pain/painStomach_ico.png")
	ISEmoteRadialMenu.icons.PainTorso = getTexture("media/ui/emotes/pain/painTorso_ico.png")



	------------------------------------------------------------------------------------------------

	ISEmoteRadialMenu.menu.sport = {}
	ISEmoteRadialMenu.menu.sport.name = getText("IGUI_Emote_Fitness")
	ISEmoteRadialMenu.menu.sport.subMenu = {}
	ISEmoteRadialMenu.menu.sport.subMenu.BurpeesGroup = getText("IGUI_Emote_Burpee")
	ISEmoteRadialMenu.menu.sport.subMenu.BicepCurlGroup = getText("IGUI_Emote_BicepCurl")
	ISEmoteRadialMenu.menu.sport.subMenu.PushupGroup = getText("IGUI_Emote_Pushup")
	ISEmoteRadialMenu.menu.sport.subMenu.SitupGroup = getText("IGUI_Emote_Situp")
	ISEmoteRadialMenu.menu.sport.subMenu.SquatGroup = getText("IGUI_Emote_Squat")

	ISEmoteRadialMenu.variants.BicepCurlGroup = { "BicepCurl01", "BicepCurl02", "BicepCurl03", "BicepCurl04", "BicepCurl05", "BicepCurl06" }
	ISEmoteRadialMenu.variants.BurpeesGroup = { "Burpees11", "Burpees12" }
	ISEmoteRadialMenu.variants.PushupGroup = { "Pushup02", "Pushup03" }
	ISEmoteRadialMenu.variants.SquatGroup = { "Squat03", "Squat04" }
	ISEmoteRadialMenu.variants.SitupGroup = { "SitUp2", "SitUp3" }


	ISEmoteRadialMenu.icons.sport = getTexture("media/ui/emotes/sport/sportMenu_ico.png")
	ISEmoteRadialMenu.icons.PushupGroup = getTexture("media/ui/emotes/sport/pushup_ico.png")
	ISEmoteRadialMenu.icons.SitupGroup = getTexture("media/ui/emotes/sport/situp_ico.png")
	ISEmoteRadialMenu.icons.BicepCurlGroup = getTexture("media/ui/emotes/sport/bicepcurl_ico.png")
	ISEmoteRadialMenu.icons.BurpeesGroup = getTexture("media/ui/emotes/sport/burpee_ico.png")
	ISEmoteRadialMenu.icons.SquatGroup = getTexture("media/ui/emotes/sport/squat_ico.png")



	----------------------------------------------------------------------------------------------

	ISEmoteRadialMenu.menu.interactive = {}
	ISEmoteRadialMenu.menu.interactive.name = getText("IGUI_Emote_InteractiveMenu")
	ISEmoteRadialMenu.menu.interactive.subMenu = {}
	ISEmoteRadialMenu.menu.interactive.subMenu.CrawlInteractive = getText("IGUI_Emote_CrawlInt")
	ISEmoteRadialMenu.menu.interactive.subMenu.ScrambleBackInteractive = getText("IGUI_Emote_ScrambleBackInt")
	ISEmoteRadialMenu.menu.interactive.subMenu.LimpInteractive = getText("IGUI_Emote_LimpInt")
	ISEmoteRadialMenu.menu.interactive.subMenu.InjuryInteractive = getText("IGUI_Emote_InjuredInt")


	ISEmoteRadialMenu.icons.interactive = getTexture("media/ui/emotes/interactive/interactiveMenu_ico.png")
	ISEmoteRadialMenu.icons.CrawlInteractive = getTexture("media/ui/emotes/interactive/crawl_ico.png")
	ISEmoteRadialMenu.icons.ScrambleBackInteractive = getTexture("media/ui/emotes/interactive/scramble_ico.png")
	ISEmoteRadialMenu.icons.LimpInteractive = getTexture("media/ui/emotes/interactive/limp_ico.png")
	ISEmoteRadialMenu.icons.InjuryInteractive = getTexture("media/ui/emotes/interactive/injured_ico.png")


	--------------------------------------------------------------------

	ISEmoteRadialMenu.menu.generalMenu = {}
	ISEmoteRadialMenu.menu.generalMenu.name = getText("IGUI_Emote_GeneralMenu")
	ISEmoteRadialMenu.menu.generalMenu.subMenu = {}
	ISEmoteRadialMenu.menu.generalMenu.subMenu.PoseGroup = getText("IGUI_Emote_Pose")
	ISEmoteRadialMenu.menu.generalMenu.subMenu.Facepalm = getText("IGUI_Emote_Facepalm")
	ISEmoteRadialMenu.menu.generalMenu.subMenu.Sway = getText("IGUI_Emote_Sway")
	ISEmoteRadialMenu.menu.generalMenu.subMenu.SmellGroup = getText("IGUI_Emote_Smell")		-- FIXME Broken
	ISEmoteRadialMenu.menu.generalMenu.subMenu.ChewNails = getText("IGUI_Emote_ChewNails")
	ISEmoteRadialMenu.menu.generalMenu.subMenu.ShiftWeight = getText("IGUI_Emote_ShiftWeight")
	ISEmoteRadialMenu.menu.generalMenu.subMenu.Burp = getText("IGUI_Emote_Burp")



	ISEmoteRadialMenu.variants.PoseGroup = { "Man1", "Man2", "Man3", "Man4", "Man5", "Man6" }
	ISEmoteRadialMenu.variants.SmellGroup = { "SmellBad", "SmellGag" }
	
	ISEmoteRadialMenu.icons.generalMenu = getTexture("media/ui/emotes/general/generalMenu_ico.png")
	ISEmoteRadialMenu.icons.PoseGroup = getTexture("media/ui/emotes/general/pose_ico.png")
	ISEmoteRadialMenu.icons.Facepalm = getTexture('media/ui/emotes/general/facepalm_ico.png')
	ISEmoteRadialMenu.icons.Sway = getTexture("media/ui/emotes/general/sway_ico.png")
	ISEmoteRadialMenu.icons.SmellGroup = getTexture("media/ui/emotes/general/smell_ico.png")
	ISEmoteRadialMenu.icons.ChewNails = getTexture("media/ui/emotes/general/chewnails_ico.png")
	ISEmoteRadialMenu.icons.ShiftWeight = getTexture("media/ui/emotes/general/shift_ico.png")
	ISEmoteRadialMenu.icons.Burp = getTexture("media/ui/emotes/general/burp_ico.png")

	------------------------------------------------------------------------------

	ISEmoteRadialMenu.menu.environmentMenu = {}
	ISEmoteRadialMenu.menu.environmentMenu.name = getText("IGUI_Emote_EnvironmentMenu")
	ISEmoteRadialMenu.menu.environmentMenu.subMenu = {}
	ISEmoteRadialMenu.menu.environmentMenu.subMenu.DrinkFloor = getText("IGUI_Emote_DrinkFloor")
	ISEmoteRadialMenu.menu.environmentMenu.subMenu.WashFace = getText("IGUI_Emote_WashFace")
	ISEmoteRadialMenu.menu.environmentMenu.subMenu.WashHands = getText("IGUI_Emote_WashHands")
	ISEmoteRadialMenu.menu.environmentMenu.subMenu.DuffelbagOn = getText("IGUI_Emote_DuffelbagOn")
	ISEmoteRadialMenu.menu.environmentMenu.subMenu.DuffelbagOff = getText("IGUI_Emote_DuffelbagOff")
	ISEmoteRadialMenu.menu.environmentMenu.subMenu.DuffelbagLoot = getText("IGUI_Emote_DuffelbagLoot")


	ISEmoteRadialMenu.icons.environmentMenu = getTexture("media/ui/emotes/environment/environmentMenu_ico.png")
	ISEmoteRadialMenu.icons.DrinkFloor = getTexture("media/ui/emotes/environment/drinkonfloor_ico.png")
	ISEmoteRadialMenu.icons.WashFace = getTexture("media/ui/emotes/environment/washFace_ico.png")
	ISEmoteRadialMenu.icons.WashHands = getTexture("media/ui/emotes/environment/washHands_ico.png")
	ISEmoteRadialMenu.icons.DuffelbagOn = getTexture("media/ui/emotes/environment/duffelbagOn_ico.png")
	ISEmoteRadialMenu.icons.DuffelbagOff = getTexture("media/ui/emotes/environment/duffelbagOff_ico.png")
	ISEmoteRadialMenu.icons.DuffelbagLoot = getTexture("media/ui/emotes/environment/duffelbagLoot_ico.png")

	-----------------

	ISEmoteRadialMenu.defaultMenu.StopAnimCustom = getText("IGUI_Emote_Stop")
	ISEmoteRadialMenu.icons.StopAnimCustom = getTexture("media/ui/emotes/stop.png")




	----------------------------------




	-- OLD




	-- ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["Duffelbag"] = getText("IGUI_Emote_Dufflebag")
	-- ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["Smother"] = getText("IGUI_Emote_Smother")
	-- ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["Smother2"] = getText("IGUI_Emote_SmotherLoop")
	-- ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["SmotheredLoop"] = getText("IGUI_Emote_SmotheredLoop")
	-- ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["SmotheredIn"] = getText("IGUI_Emote_SmotheredIn")
	-- ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["SmotheredOut"] = getText("IGUI_Emote_SmotheredOut")
	-- ISEmoteRadialMenu.menu.RoleplayAnimationsExtra.subMenu["contactR90"] = getText("IGUI_Emote_MoveThere90")






	-- ISEmoteRadialMenu.variants["Duffelbag"] = { "DuffelbagOn", "DuffelbagLoot", "DuffelbagOff" }
	-- ISEmoteRadialMenu.variants["salute"] = { "saluteformal", "salutecasual" }
	-- ISEmoteRadialMenu.variants["Walk"] = { "Walk002", "Walk003", "Walk005" }



	-----------------
	--ISEmoteRadialMenu.icons["Idle"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	--ISEmoteRadialMenu.icons.bentdouble = getTexture("media/ui/emotes/bentdouble_ico.png") -- FIXME missing icon
	--ISEmoteRadialMenu.icons["Scared"] = getTexture("media/ui/emotes/scared_ico.png")







	-- ISEmoteRadialMenu.icons["ScrambleFloorBack"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	-- ISEmoteRadialMenu.icons["ScrambleFloor"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	-- ISEmoteRadialMenu.icons["ScrambleFloorIdle"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	-- ISEmoteRadialMenu.icons["Smother"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	-- ISEmoteRadialMenu.icons["Smother2"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	-- ISEmoteRadialMenu.icons["SmotheredLoop"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	-- ISEmoteRadialMenu.icons["SmotheredIn"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	-- ISEmoteRadialMenu.icons["SmotheredOut"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	-- ISEmoteRadialMenu.icons["Duffelbag"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	-- ISEmoteRadialMenu.icons["Walk"] = getTexture("media/ui/emotes/KBA_test_ico.png")
	-- ISEmoteRadialMenu.icons["DragDown"] = getTexture("media/ui/emotes/dragdown_ico.png")
	-- ISEmoteRadialMenu.icons["contactR90"] = getTexture("media/ui/emotes/KBA_test_ico.png")

end



local og_ISEmoteRadialMenuEmote = ISEmoteRadialMenu.emote

function ISEmoteRadialMenu:emote(emote)


	if emote == "StopAnimCustom" then
		KBA_Handler.StopAnimation(getPlayer())
		return
	end


	if not KBA_Handler.CheckEmote(emote) then
		print("KBA: normal emote => " .. emote)
		og_ISEmoteRadialMenuEmote(self, emote)
	end

end
