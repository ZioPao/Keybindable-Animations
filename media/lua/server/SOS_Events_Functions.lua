--[[
----------------------------------------------------------------------------------------------------------------------------⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                       ⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣰⣦⣀⣀⠀⠠⠄⠄⠠⠀⠀⢀⣠⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⡿⢿⣦⠀⠀⠀⠀⠀⠀⠀⢀⡷⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⣩⡿⠋⠙⠉⢩⡿⠟⠀⠀⠀⠀⠀⠀⢀⣶⣾⠟⠋⠛⣿⣷⡄⠀⠀⠀⠀⠀⣴⣿⠂⠀⠀⣼⡿⠀⠀⠀⠀⠀⠀⢀⣠⡴⠶⣤⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⠦⠤⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡿⠋⠀⢸⠏⠀⠀⠀⠀⠀⠀⠀⣼⠃⠀⠀⠀⠀⢠⡇⠀⠀⠀⢠⣾⠋⠀⠀⠀⠀⣸⠀⠀⠀⠀⠀⠀⠀⢠⣿⠋⠀⠀⠀⠀⠛⠛⠁⠀⠀⠀⢀⣾⣿⠏⠀⠀⢀⡿⠃⠀⠀⠀⠀⠀⠶⠋⠁⢀⣰⠟⠀⠀⠀⠀⠀⠀⠀⣹⣿⠀⠀⠀⠀⣨⣿⠇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣾⡟⢀⣠⣤⣴⣶⠆⠀⠀⠀⠀⠀⢰⠃⠀⠀⠀⠀⠀⣾⠀⠀⠀⣰⣿⠃⠀⠀⠀⠀⠀⣿⡀⠀⠀⠀⠀⠀⢀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠋⠀⠀⢀⡾⠁⠀⠀⠀⠀⠀⠀⠀⣠⣶⣯⣅⡀⠀⠀⠀⠀⠀⠀⠀⣿⡇⢀⣠⠴⠞⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣸⡟⠀⠛⠉⣠⣾⠃⠀⠀⠀⠀⠀⠀⣼⠀⠀⠀⠀⠀⠀⢿⣤⡴⢺⢻⠃⠀⠀⠀⠀⠀⢸⡿⠁⠀⠀⠀⠀⠀⠀⢿⠀⠀⠀⠀⢀⣤⠀⠀⠀⠀⠀⢀⣿⣇⡤⠤⢤⣾⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢻⡆⠀⠀⠀⠀⠀⣿⣯⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⠃⠀⠀⢀⣼⠇⠀⠀⠀⠀⠀⠀⣰⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢂⠇⠀⠀⠀⠀⠀⠀⣾⡅⠀⠀⠀⠀⠀⠀⠀⢸⣧⡀⠀⠀⣼⠇⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠐⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠃⠀⠀⠀⠀⠀⢰⡏⠘⣦⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠘⢧⣤⡶⠟⢻⠀⠀⠀⠀⠀⠀⢠⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⠏⠀⠀⠀⠀⠀⠀⢰⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣶⡾⠋⠀⠀⠀⠀⠀⠀⢸⡟⠀⠀⠀⢰⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠞⠁⠀⠀⠀⠀⠀⠀⠁⠀⠈⠙⠂⠔⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠀⠀⠀⠀⠀⢀⣿⣤⠶⠒⠒⠁⠀⠀⠀⠀⢠⠏⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠐⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

----------------------------------------------------------------------------------------------------------------------------
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
Please contact me if you need to hire someone to do mods or other design related tasks
https://steamcommunity.com/id/glytch3r/myworkshopfiles/
https://www.glytch3r.com
https://ko-fi.com/glytch3r
Discord: Glytch3r#2892

coded by glytch3r for Signs of Sickness Server
----------------------------------------------------------------------------------------------------------------------------
--]]


require "lua_timers"

function PerkLevelup(player, perkType)
    local perkLevel = player:getPerkLevel(perkType);
    if perkLevel < 10 then
        player:LevelPerk(perkType, false);
        player:getXp():setXPToLevel(perkType, player:getPerkLevel(perkType));
        SyncXp(player)
    end 
end
	


-- local msg = "test"
-- playerSay('Rizii', msg)
function getCar()
	local car = nil
	if getPlayer():getVehicle() then car = getPlayer():getVehicle() 
		elseif getPlayer():getNearVehicle() then car = getPlayer():getNearVehicle()
		elseif  getPlayer():getUseableVehicle() then car = getPlayer():getUseableVehicle() 
	end
	return car
end
 
--[[ function tpEveryoneToLoc(argx, argy, argz)
	print(getPlayer():getUsername()..' Executed GlytchFunction tpEveryoneToLoc')
	local Msg = 'Be sure to get checked for any Signs of Sickness'
	SendCommandToServer(string.format("/servermsg \"" .. Msg  .. "\""))
	processGeneralMessage(Msg)
		for i=0, getOnlinePlayers():size()-1 do
			local pl =getOnlinePlayers():get(i):getDisplayName()
		pl:getModData()['lastX'] = pl:getX()
		pl:getModData()['lastY'] = pl:getY()
		pl:getModData()['lastZ'] = pl:getZ()
		getSoundManager():PlayWorldSound('SOStagline', pl:getSquare(), 0, 5, 5, false);  
		addSound(pl, pl:getX(), pl:getY(), pl:getZ(), 5, 1)
		end

	timer:Simple(5, function() 	
		for i=0, getOnlinePlayers():size()-1 do
		--local x= 6026; local  y= 5616; local  z= 0
		print(i)
		local chr = getOnlinePlayers():get(i):getDisplayName()
		SendCommandToServer(string.format("/teleportto \""  .. chr .. "\"  " .. argx .. ',' .. argy .. ',' .. argz..""))
	--	getOnlinePlayers():get(i):getDisplayName():Say('Go Go Go!') 
		end
	end) 
end 
 ]]




function tpAlltoMe()

		for i=0, getOnlinePlayers():size()-1 do
			local pl =getOnlinePlayers():get(i):getUsername()
		getSoundManager():PlayWorldSound('SOStagline', pl:getSquare(), 0, 5, 5, false);  
		addSound(pl, pl:getX(), pl:getY(), pl:getZ(), 5, 1)
		end

	
		for i=0, getOnlinePlayers():size()-1 do
			if not getOnlinePlayers():get(i) == getPlayer() then
				local argx = getPlayer():getX()
				local argy = getPlayer():getY()
				local argz = getPlayer():getZ()
				SendCommandToServer(string.format("/teleportto \""  .. getOnlinePlayers():get(i):getUsername() .. "\"  " .. argx .. ',' .. argy .. ',' .. argz..""))
			end
		--getOnlinePlayers():get(i):getUsername():Say('Go Go Go!') 
		end
end 
function healPlayer(pl)
    SendCommandToServer("/godmod \"" .. pl .. "\"");
        SendCommandToServer("/godmod \"" .. pl .. "\"");
end 

function ungod(pl)
    SendCommandToServer("/godmod \"" .. pl .. "\"");

end 
  --  SendCommandToServer("/godmod \"" .. "admin" .. "\"");
--usage: healPlayer('Ossalion')


   -- SendCommandToServer("/godmod \"" .. "admin" .. "\"");
--tpEveryoneToLoc(12304,6757,0)
--Usage: tpEveryoneToLoc(12304,6757,0)


--usage:  StaggerThemAll(300)

function servmsg(msg)
	processGeneralMessage(msg)
	SendCommandToServer(string.format("/servermsg \"" .. msg  .. "\""))
	
end	
--usage: servmsg("testmsg")

--[[  function tpToOrigin(playerName)
    print(getPlayer():getUsername().." Executed GlytchFunction tpToOrigin")
	for i=0, getOnlinePlayers():size()-1 do
		if  getOnlinePlayers():get(i):getUserame() == getUserame then
            local lastX = player:getModData()['lastX']
            local lastY = player:getModData()['lastY']
            local lastZ = player:getModData()['lastZ']
				if lastX and lastY and lastZ then
				SendCommandToServer(string.format("/teleportto \""  .. getOnlinePlayers():get(i):getUserame() .. "\"  " .. lastX .. ',' .. lastY .. ',' .. lastZ..""))
					player:getModData()['lastX'] = nil
					player:getModData()['lastY'] = nil
					player:getModData()['lastZ'] = nil
					break
		end		end
    end
end ]]

function brush()
BrushToolChooseTileUI.openPanel(900, 20, getPlayer())
end



-- function sendFlare()
-- getPlayer():getCurrentSquare():explode()
	-- WorldFlares.launchFlare(5, getPlayer():getX(), getPlayer():getY(), 12, 5, 0, 0, 1, 0, 0, 1);
	-- --lifeTime = lifeTime*60;
    -- --WorldFlares.launchFlare(lifeTime, x, y, range, windspeed, c.r, c.g, c.b, c2.r, c2.g, c2.b);
	
-- end
function killme()
getPlayer():Kill(getPlayer())
	--getPlayer():Kill(getPlayer())
end
function suicide()
	getPlayer():setGodMod(false);
	getPlayer():getBodyDamage():setOverallBodyHealth(0)
	--getPlayer():Kill(getPlayer())
end
--getSpecificPlayer(0):setShowAdminTag(false);
-- tpToOrigin('Ossalion')
-- tpToOrigin('Glytch3r')
	function hideAdmin()
		local onlinePlayers = getOnlinePlayers()
		for i=0, onlinePlayers:size()-1 do
			local aPlayer = getOnlinePlayers():get(i)
			getPlayer():setShowAdminTag(false);
			sendPlayerExtraInfo(aPlayer)
		end
		
	end

--getPlayer():setShowAdminTag(false);
--[[ function checkPl()
	local pl = getPlayer()
		for i=0, getOnlinePlayers():size()-1 do
		chr = getOnlinePlayers():get(i)
			if chr:getUsername() ~= pl:getUsername() then 
			print(chr:getUsername().." Godmode:".. chr:getGodMod())
			end
		end
end ]]
--[[ 

function clearGods()
	local pl = getPlayer()
		for i=0, getOnlinePlayers():size()-1 do
		chr = getOnlinePlayers():get(i)
			if chr:getUsername() ~= pl:getUsername() then 
				if chr:getGodMod() == true then
					chr:setGodMod(false);
					print(chr:getUsername() ..' Godmode: '..chr:getGodMod())
				end
			end
		end
end ]]

	
	function olList()
		local result = ""
			for k, v in pairs(getOnlinePlayers()) do
			result = result .. tostring(k) .. "\n";
			end 
		Clipboard.setClipboard(result);
		print(result) 
	end

	function cliptab(tablevar)
		local result = ""
			for k, v in pairs(tablevar) do
			result = result .. tostring(k) .. "\n";
			end 
		Clipboard.setClipboard(result);
		print(result) 
	end

	function sosscare()
			getSoundManager():PlayWorldSound('ZombieSurprisedPlayer', getPlayer():getSquare(), 0, 5, 5, false);  
			addSound(getPlayer(), getPlayer():getX(), getPlayer():getY(), getPlayer():getZ(), 5, 1)
	end
	
	function sostag()
			getSoundManager():PlayWorldSound('SOStagline', getPlayer():getSquare(), 0, 5, 5, false);  
	end

function saveServer()
	local command = string.format("/save"); 
	SendCommandToServer(command)
end



	function whereami()
		local whereVar = "X: "..math.floor(getPlayer():getX()) .."  Y: ".. math.floor(getPlayer():getY()) .."  Z: ".. math.floor(getPlayer():getZ()); 
		local whereVar2 = 'teleportto '..math.floor(getPlayer():getX()) ..",".. math.floor(getPlayer():getY()) ..",".. math.floor(getPlayer():getZ()); 
		Clipboard.setClipboard(whereVar2);
		print("Clipboard Saved: " ..whereVar);
	end
	




function getGodPerks()
	for i = 1, 10+1 do 
	PerkLevelup(getPlayer(), Perks.Reloading);
	PerkLevelup(getPlayer(), Perks.Aiming);
	PerkLevelup(getPlayer(), Perks.Nimble);	
	PerkLevelup(getPlayer(), Perks.Sprinting);	
	PerkLevelup(getPlayer(), Perks.Sneak);	
	PerkLevelup(getPlayer(), Perks.Lightfoot);	
	PerkLevelup(getPlayer(), Perks.Maintenance);
	PerkLevelup(getPlayer(), Perks.Blunt);
	PerkLevelup(getPlayer(), Perks.LongBlade);
	PerkLevelup(getPlayer(), Perks.SmallBlade);
	PerkLevelup(getPlayer(), Perks.SmallBlunt);
	PerkLevelup(getPlayer(), Perks.Axe);
	PerkLevelup(getPlayer(), Perks.Spear);	
	PerkLevelup(getPlayer(), Perks.Electricity);	
	PerkLevelup(getPlayer(), Perks.MetalWelding);	
	PerkLevelup(getPlayer(), Perks.Mechanics);	
	PerkLevelup(getPlayer(), Perks.Woodwork);
	PerkLevelup(getPlayer(), Perks.Tailoring);	
	PerkLevelup(getPlayer(), Perks.Doctor);	
	PerkLevelup(getPlayer(), Perks.Cooking);	
	PerkLevelup(getPlayer(), Perks.Farming);	
	PerkLevelup(getPlayer(), Perks.Fishing);	
	PerkLevelup(getPlayer(), Perks.Trapping);	
	PerkLevelup(getPlayer(), Perks.Fitness);
	PerkLevelup(getPlayer(), Perks.Strength);
	getPlayer():Say(getText("GODLIKE!"));
	end
end
function clipTraits()
	local result = ""
	for i=0,TraitFactory.getTraits():size()-1 do
	local trait = TraitFactory.getTraits():get(i);
	print(trait:getType())
	result = result .. tostring(trait:getType()) .. "\n";   
	end 
	Clipboard.setClipboard(result);	
end
function getAllTraits()
	for i=0,TraitFactory.getTraits():size()-1 do
	local trait = TraitFactory.getTraits():get(i);
		if trait:getCost() >= 0 then
			getPlayer():getTraits():add(trait:getType())
		else
			getPlayer():getTraits():remove(trait:getType())
		end
	end
end
function clipPerks()
local result = ""
	for i=0, Perks.getMaxIndex() - 1 do
		perk = PerkFactory.getPerk(Perks.fromIndex(i));
		print(perk)
		result = result .. tostring(perk) .. "\n";   
	end 
	Clipboard.setClipboard(result);
end


function getAllPerks()
	for i=0, Perks.getMaxIndex() - 1 do
	perk = PerkFactory.getPerk(Perks.fromIndex(i));
	PerkLevelup(getPlayer(), perk);
	end
end



function getGodTraits()

	getPlayer():getTraits():remove("Conspicuous");
	getPlayer():getTraits():remove("SundayDriver");
	getPlayer():getTraits():remove("Smoker");
	getPlayer():getTraits():remove("Illiterate");
	getPlayer():getTraits():remove("Deaf");
	getPlayer():getTraits():remove("Disorganized");
	getPlayer():getTraits():remove("Hemophobic");
	getPlayer():getTraits():remove("Cowardly");
	getPlayer():getTraits():remove("Agoraphobic");
	getPlayer():getTraits():remove("Claustrophobic");
	getPlayer():getTraits():remove("SlowHealer");
	getPlayer():getTraits():remove("SlowReader");
	getPlayer():getTraits():remove("SlowLearner");
	getPlayer():getTraits():remove("Clumsy");
	getPlayer():getTraits():remove("ProneToIllness");
	getPlayer():getTraits():remove("AllThumbs");
	getPlayer():getTraits():remove("ShortSighted");
	getPlayer():getTraits():remove("HardOfHearing");
	getPlayer():getTraits():remove("HeartyAppitite");
	getPlayer():getTraits():remove("Unlucky");
	getPlayer():getTraits():remove("Thinskinned");
	getPlayer():getTraits():remove("Emaciated");
	getPlayer():getTraits():remove("Pacifist");
	getPlayer():getTraits():remove("WeakStomach");
	getPlayer():getTraits():remove("Asthmatic"); 
	getPlayer():getTraits():add("FastReader");
	getPlayer():getTraits():add("FastLearner"); 
	getPlayer():getTraits():add("FastHealer"); 
	getPlayer():getTraits():add("EagleEyed");
	getPlayer():getTraits():add("KeenHearing");
	getPlayer():getTraits():add("Graceful");
	getPlayer():getTraits():add("Brave");
	getPlayer():getTraits():add("Dextrous");
	getPlayer():getTraits():add("Resilient"); 
	getPlayer():getTraits():add("LightEater"); 
	getPlayer():getTraits():add("Lucky"); 
	getPlayer():getTraits():add("ThickSkinned"); 
	getPlayer():getTraits():add("LowThirst"); 
	getPlayer():getTraits():add("Outdoorsman"); 
	getPlayer():getTraits():add("AdrenalineJunkie"); 
	getPlayer():getTraits():add("IronGut"); 
	getPlayer():getTraits():add("Jogger"); 
	getPlayer():getTraits():add("Desensitized");
	getPlayer():getTraits():add("Organized");
	getPlayer():getTraits():add("Inconspicuous");
	getPlayer():getTraits():add("NightVision");
	getPlayer():getTraits():add("SpeedDemon");
end 

--[[
glytchLight(); glytchblade()
]]
 
	function glytchLight()
		local Script = ScriptManager.instance:getItem("Base.Torch")
--[[ 		Script:DoParam("AttachmentType = Knife")		
		Script:DoParam("DisplayName	=	GlytchLight")
		Script:DoParam("Tooltip	=	GlytchLight")
		Script:DoParam("Icon	=	Apple")	
		Script:DoParam("StaticModel = BeerBottle")	 ]]
		
	
		local item = InventoryItemFactory.CreateItem("Base.Torch")
		getPlayer():getInventory():AddItem(item)
		
		getPlayer():setPrimaryHandItem(nil)
		item:setName("Glytch Light"); 
		item:setUseDelta(0.0000000001) 
		item:setActivated(not item:isActivated())
		item:setAttachedSlot(2);
		getPlayer():setAttachedItem("Belt Left", item);
		item:setAttachedSlotType("Belt Left");
		item:setAttachedToModel("Belt Left");
		ISInventoryPage.renderDirty = true;
		getPlayer():getInventory():setDrawDirty(true);
		ISInventoryPage.dirtyUI();
		getPlayer():resetModel();
		getPlayerLoot(getPlayer():getPlayerNum()):refreshBackpacks();
	end
-- SendCommandToServer("/godmod \"" .. "admin" .. "\"");



	function removeCar()
		local vehicle = getCar()
		if vehicle then
			sendClientCommand(getPlayer(), "vehicle", "remove", { vehicle = vehicle:getId() })
		end
	end
	
function spawnv()
local scripts = getScriptManager():getAllVehicleScripts()		
local allV = scripts:size()+1	
local randV = ZombRand(1, allV)
local randM = scripts:get(randV):getModule():getName()
local randN = scripts:get(randV):getName()
local spawnV = randM..'.'..randN
local command = "/addvehicle ".. spawnV .. ' '.. getPlayer():getUsername() 
SendCommandToServer(command)
end


function cspawn()
local vehicle = getCar()
	if vehicle then
	sendClientCommand(getPlayer(), "vehicle", "remove", { vehicle = vehicle:getId() })
	end
spawnv()
end

	

function getCorrectAngle(vehicle)
	local vec1 = Vector3f.new()
	local vec2 = Vector3f.new()
	local frontPos = vehicle:getWorldPos(0, 0, 1, vec1)
	local centerPos = vehicle:getWorldPos(0, 0, 0, vec2)

	local dx = frontPos:x() - centerPos:x()
	local dy = frontPos:y() - centerPos:y()
   local dirVector = vec1:set(dx, dy, 0):normalize()
   local baseVector = vec2:set(1, 0, 0):normalize()

   local angle = (baseVector:angle(dirVector) * 180 / math.pi + 270) % 360

   return angle + 180
end
	


--[[ function CheckPL()
	Events.OnTick.Add(CheckPLtick);
		timer:Simple(30, function() 
		Events.OnTick.Remove(CheckPLtick);
		end) 
end
 ]]
--[[ 

function setContactDeath()
	if getPlayer():getModData()['contactDeath'] ~= true then
	getPlayer():getModData()['contactDeath'] = true
	getPlayer():setHaloNote("Death Contact: On") 
	else 
	getPlayer():getModData()['contactDeath'] = nil
	getPlayer():setHaloNote("Death Contact: Off") 
	end

end
		--getOnlinePlayers():get(1):Kill(nil);

Events.OnZombieUpdate.Remove(onZombiecontactDeath);
function onZombiecontactDeath(zombie)
if not zombie then return end
  if getPlayer():getModData()['contactDeath'] == true then
  local player = getPlayer()
				  --if player ~= zombie then
		if player:DistTo(zombie:getSquare()) <= 3 then
		if not player:getSquare():isBlockedTo(zombie:getSquare()) then
			zombie:setHealth(0)	
			end
		end
               -- end
	  if getPlayer():getSquare() == zombie:getSquare() then
		 zombie:setHealth(0)	  		 
	  end
  end
end
Events.OnZombieUpdate.Add(onZombiecontactDeath);

 ]]


 function Recipe.OnCreate.OpenTilePicker(items, result, player) 
BrushToolChooseTileUI.openPanel(0, 0, player);
  end

 function Recipe.OnCreate.OpenBrushTool(items, result, player) 
BrushToolChooseTileUI.openPanel(0, 0, player);
  end


function flipVdn()
local car = getCar() 
local carAX = math.floor(car:getAngleX())
local carAY = math.floor(car:getAngleY())
local carAZ = math.floor(car:getAngleZ())
ISVehicleAngles:setVehicle(car:setAngles(carAX, carAY, 180))
	-- local vehicle = getCar()
	-- local angle = getCorrectAngle(vehicle)
	-- vehicle:flipUpright();
	-- vehicle:setAngles(0, angle, 0)
	-- vehicle:setPhysicsActive(true)
end



Events.OnPlayerDeath.Remove(adminDeleteOnDeath)
local function adminDeleteOnDeath(player)
	if isAdmin() then 
			player:clearWornItems();
			player:getInventory():clear();
			player:resetModel();
	end		
end
Events.OnPlayerDeath.Add(adminDeleteOnDeath)

function flipVup()
	getCar():flipUpright()
  end

  
function despawnTreesArea()
local rad = 55
	local pl = getPlayer()
	local x, y, z = pl:getX(), pl:getY(), pl:getZ()
	for xx = -rad, rad do
	for yy = -rad, rad do
	local square =  pl:getCell():getGridSquare(x + xx, y + yy, z)
		for i=0, square:getObjects():size()-1 do
		local obj = square:getObjects():get(i)
		if instanceof(obj, "IsoTree") then
			sledgeDestroy(obj)
			obj:getSquare():transmitRemoveItemFromSquare(obj)
		end
		end
	end
	end
end
function cleanArea()
local rad = 5
	local pl = getPlayer()
	local x, y, z = pl:getX(), pl:getY(), pl:getZ()
	for xx = -rad, rad do
	for yy = -rad, rad do
	local square =  pl:getCell():getGridSquare(x + xx, y + yy, z)
		for i=0, square:getObjects():size()-1 do
		local obj = square:getObjects():get(i)

		debugScenarios.Trailer3Scenario_Building.removeItemsButFloor(square:getX(), square:getY(),square:getZ())
		end
	end
	end
end
--[[ 
function clearZed()
local rad = 5
	local pl = getPlayer()
	local x, y, z = pl:getX(), pl:getY(), pl:getZ()
	for xx = -rad, rad do
	for yy = -rad, rad do
	local square =  pl:getCell():getGridSquare(x + xx, y + yy, z)
		for i=0, square:getObjects():size()-1 do
		local obj = square:getObjects():get(i)
		debugScenarios.Trailer3Scenario_Building.removeItemsButFloor(square:getX(), square:getY(),square:getZ())
		end
	end
	end
end ]]

