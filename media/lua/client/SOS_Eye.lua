require "recipecode"

require('NPCs/MainCreationMethods')


Recipe = Recipe or {}
Recipe.GetItemTypes = Recipe.GetItemTypes or {}
Recipe.OnCanPerform = Recipe.OnCanPerform or {}
Recipe.OnCreate = Recipe.OnCreate or {}
Recipe.OnGiveXP = Recipe.OnGiveXP or {}
Recipe.OnTest = Recipe.OnTest or {}

function Recipe.OnCreate.MaterializePlank(items, result, player)   
 if (isAdmin() 
  or (getClientUsername() == "Pacifist") 
  or (getClientUsername() == "rizii")   
  or (getClientUsername() == "Rizii")   
  or (getClientUsername() == "widzmandoo")   
  or (getClientUsername() == "Rafnagud")   
  or (getClientUsername() == "Rafnagud2"))   then
player:getInventory():AddItem("Base.Plank");
player:getInventory():AddItem("Base.Plank");
player:getInventory():AddItem("Base.Plank");
player:getInventory():AddItem("Base.Plank");
player:getInventory():AddItem("Base.Plank");
else
player:Say(getText("Im not allowed to do that!"));
end
 end

function Recipe.OnCreate.MaterializeMultiTool(items, result, player)  
 if (isAdmin() 
  or (getClientUsername() == "Pacifist")  
  or (getClientUsername() == "rizii")   
    or (getClientUsername() == "Passi")   
  or (getClientUsername() == "Rizii")   
  or (getClientUsername() == "widzmandoo")   
  or (getClientUsername() == "Rafnagud")   
  or (getClientUsername() == "Rafnagud2")) 
then player:getInventory():AddItem("QuestSOS.SOSBuilder");
else
player:Say(getText("Im not allowed to do that!"));
end
 end 
 
function OnEat_GlytchGift(food, player, percent)
player:Say(getText("Thanks Glytch3r"));
end

function Recipe.OnCreate.CheckInfection(items, result, player)
chckInfection()
end

function chckInfection()
if getPlayer():getBodyDamage():IsInfected() then getPlayer():Say(getText("I need elixir")); end
if getPlayer():getBodyDamage():isHasACold() then getPlayer():Say(getText("I have a cold")); end
if getPlayer():getBodyDamage():IsFakeInfected() then getPlayer():Say(getText("I need antibiotics")); end
if getPlayer():getBodyDamage():IsInfected() then getPlayer():Say(getText("I need elixir")); end
end

function Recipe.OnCreate.WatchSOSintro(items, result, player)

local url = "https://www.youtube.com/channel/UCZBtmY9M5ZKtNUyeEJkxO3Q"    
if isSteamOverlayEnabled() then
activateSteamOverlayToWebPage(url) --opens steam
else
openUrl(url)  --opens browser directly
end
end
function Recipe.OnCreate.WelcometoSOS(items, result, player)
player:Say(getText("I should join the server https://discord.gg/U5umjC6jDV"));
local url = "https://discord.gg/U5umjC6jDV"    
if isSteamOverlayEnabled() then
activateSteamOverlayToWebPage(url) --opens steam
else
openUrl(url)  --opens browser directly
end

end

function Recipe.OnCreate.WhiteElixir(items, result, player)
player:Say(getText("I am the Cure!!!"));
end

function Recipe.OnCreate.TakeGreen(items, result, player)
    local bodyDamage = player:getBodyDamage();
	bodyDamage:setHasACold(false);
    bodyDamage:setInfected(false);
    bodyDamage:setInfectionMortalityDuration(-1);
    bodyDamage:setInfectionTime(-1);
    bodyDamage:setInfectionLevel(0);
    local bodyParts = bodyDamage:getBodyParts();
    for i=bodyParts:size()-1, 0, -1  do
local bodyPart = bodyParts:get(i);
bodyPart:SetInfected(false); 
    end
end

function Recipe.OnCreate.FirstAid(items, result, player)

		local player = getPlayer() 
		local hp = player:getBodyDamage():getHealth()
		local bodyDamage = player:getBodyDamage();
		local bodyParts = bodyDamage:getBodyParts();
		
	
    for i=bodyParts:size()-1, 0, -1  do
		local bodyPart = bodyParts:get(i);
		bodyPart:RestoreToFullHealth();
		bodyPart:SetInfected(false);
		bodyPart:setInfectedWound(false);
		bodyPart:SetFakeInfected(false);
		bodyPart:setWoundInfectionLevel(0);	
		bodyPart:setDeepWoundTime(0)
		bodyPart:setDeepWounded(false)
		bodyPart:setBleedingTime(0)
		bodyPart:setBurnTime(0)
		bodyPart:SetBitten(false);
		bodyPart:setFractureTime(0)
		
		bodyPart:setScratchTime(0)
		bodyPart:setCutTime(0)
    end
		player:getFitness():removeStiffnessValue(BodyPartType.ToString(bodyPart:getType()))
		bodyDamage:setInfected(false);
		bodyDamage:setHasACold(false);
		bodyDamage:setInfectionMortalityDuration(-1);
		bodyDamage:setInfectionTime(-1);
		bodyDamage:setInfectionLevel(0);
		bodyDamage:setInfectionGrowthRate(0);	
		bodyDamage:setFakeInfectionLevel(0);
		bodyDamage:setHealth(hp)
end
	
function Recipe.OnCreate.TakeBlue(items, result, player)
        PerkLevelup(player, Perks.Nimble);	
        PerkLevelup(player, Perks.Sprinting);	
        PerkLevelup(player, Perks.Sneak);	
        PerkLevelup(player, Perks.Lightfoot);	
        player:Say(getText("Let's Go!"));
        end

function Recipe.OnCreate.TakeIce(items, result, player)
    PerkLevelup(player, Perks.Maintenance);
    PerkLevelup(player, Perks.Blunt);
    PerkLevelup(player, Perks.LongBlade);
    PerkLevelup(player, Perks.SmallBlade);
    PerkLevelup(player, Perks.SmallBlunt);
    PerkLevelup(player, Perks.Axe);
    PerkLevelup(player, Perks.Spear);	
    player:Say(getText("Just Bring It!"));
end

function Recipe.OnCreate.TakePink(items, result, player)
    PerkLevelup(player, Perks.Electricity);	
    PerkLevelup(player, Perks.MetalWelding);	
    PerkLevelup(player, Perks.Mechanics);	
    player:Say(getText("Technical!"));

end

function Recipe.OnCreate.TakePurple(items, result, player)
    PerkLevelup(player, Perks.Woodwork);
    PerkLevelup(player, Perks.Tailoring);	
    PerkLevelup(player, Perks.Doctor);	
    PerkLevelup(player, Perks.Cooking);	
    PerkLevelup(player, Perks.Farming);	
    PerkLevelup(player, Perks.Fishing);	
    PerkLevelup(player, Perks.Trapping);	
    player:Say(getText("Time to Work!"));
end

function Recipe.OnCreate.TakeGray(items, result, player)   
      PerkLevelup(player, Perks.Fitness);
    PerkLevelup(player, Perks.Strength);
    player:Say(getText("No Sweat!"));
end	

function Recipe.OnCreate.TakeRed(items, result, player)
    PerkLevelup(player, Perks.Reloading);
    PerkLevelup(player, Perks.Aiming);
    player:Say(getText("Locked and Loaded!"));
	end
		
function Recipe.OnCreate.TakeDark(items, result, player)   
 getGodPerks();
    end

--                                                                 A
function Recipe.OnCreate.SilenceRewardA(items, result, player) 	
if (isAdmin() or (getClientUsername() == "himboslice") 
or (getClientUsername() == "widzmandoo")) then
player:getTraits():remove("NightVision"); 
player:getTraits():add("NightVision"); 
player:Say("You can run but you cannot hide");
end 
end
--                                                                 B
function Recipe.OnCreate.SilenceRewardB(items, result, player) 
if (isAdmin() or (getClientUsername() == "Glytch3r")) 
then
player:getTraits():remove("SundayDriver");                                                                 
player:getTraits():remove("SpeedDemon"); 
player:getTraits():add("SpeedDemon"); 
end 
end
--                                                                 C
function Recipe.OnCreate.SilenceRewardC(items, result, player) 	
if (isAdmin() or (getClientUsername() == "unbidden")) then   
player:getTraits():remove("Smoker");
player:Say("I should quit this SHIT");
 end end
--                                                                  D
function Recipe.OnCreate.SilenceRewardD(items, result, player) 
if (isAdmin() or (getClientUsername() == "Glytch3r")) then
player:getTraits():remove("Conspicuous");             
player:getTraits():remove("Inconspicuous");
player:getTraits():add("Inconspicuous"); end end
--                                                                  E
function Recipe.OnCreate.SilenceRewardE(items, result, player) 
if (isAdmin() or (getClientUsername() == "Glytch3r")
or (getClientUsername() == "rizii")
or (getClientUsername() == "Leon")
or (getClientUsername() == "Todes")
or (getClientUsername() == "Passi")) then   
player:getTraits():remove("Illiterate"); 
player:Say("Smart Move");
end end 
--                                                                   F
function Recipe.OnCreate.SilenceRewardF(items, result, player) 
if (isAdmin() or (getClientUsername() == "Glytch3r")) then
player:getTraits():remove("Disorganized");   
player:getTraits():remove("Organized");
player:getTraits():add("Organized"); end end
--                                                                   G
function Recipe.OnCreate.SilenceRewardG(items, result, player) 
if (isAdmin() or (getClientUsername() == "Glytch3r")) then
player:getTraits():remove("Hemophobic");
player:getTraits():remove("Cowardly");
player:getTraits():remove("Agoraphobic");
player:getTraits():remove("Claustrophobic");           
player:getTraits():remove("Desensitized");
player:getTraits():add("Desensitized"); end end
--                                                                   H
function Recipe.OnCreate.SilenceRewardH(items, result, player) 
if (isAdmin() or (getClientUsername() == "Glytch3r")) then
player:getTraits():remove("Deaf"); end end

function Recipe.OnCreate.CouncilPerk(items, result, player) 
if (isAdmin() or (getClientUsername() == "Lamp")
or (getClientUsername() == "Frosty")
or (getClientUsername() == "Leon")
or (getClientUsername() == "rizii")
or (getClientUsername() == "glytch3r")) then
player:getTraits():remove("Disorganized");   
player:getTraits():remove("Organized");
player:getTraits():add("Organized"); 
player:getTraits():remove("Council");
player:getTraits():add("Council"); 
player:Say("Let us check our schedule");
end end

function Recipe.OnCreate.sunAdmin(items, result, player) 
 ISFastTeleportMove.cheat = true;
 player:setGodMod(true);
player:setInvincible(true);
player:setZombiesDontAttack(true);
player:setCanHearAll(true);
player:setCanSeeAll(true);
player:setUnlimitedEndurance(true);
player:setUnlimitedCarry(true);
ISFastTeleportMove.cheat = true;
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

function Recipe.OnCreate.sunTraits1(items, result, player) 
getGodTraits()
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

function Recipe.OnCreate.sunStats2(items, result, player) 
   getGodPerks()
 end

function Recipe.OnCreate.sunMap3(items, result, player)       
ZombiePopulationWindow.OnOpenPanel();

  end
  
function Recipe.OnCreate.sunDelZed4(items, result, player) 
    SendCommandToServer(string.format("/removezombies -remove true"))
  end

function Recipe.OnCreate.sunTilePick5(items, result, player) 
BrushToolChooseTileUI.openPanel(0, 0, player)
  end

function Recipe.OnCreate.sunHide6(items, result, player) 
player:setInvisible(true);
player:setGhostMode(true);
player:setTimedActionInstantCheat(false);
  end

function Recipe.OnCreate.sunShow7(items, result, player) 
player:Say(getText("Show!"));
player:setInvisible(false);
player:setGhostMode(false);
player:setTimedActionInstantCheat(true);
  end

 function Recipe.OnCreate.sunTag8(items, result, player) 
-- SendCommandToServer("/servermsg /"test/"");
 player:setTimedActionInstantCheat(false);
 -- SendCommandToServer(string.format("\"/servermsg\" .. getPlayer():username() .. \"took from the couch!\""));
  end

function Recipe.OnCreate.sunDisc9(items, result, player) 
  player:setTimedActionInstantCheat(true);
--  SendCommandToServer("/servermsg test");
-- SendCommandToServer(string.format("/createhorde2 -x %d -y %d -z %d -count %d -radius %d -crawler %s -isFallOnFront %s -isFakeDead %s -knockedDown %s -health %s -- -outfit %s ", self.selectX, self.selectY, self.selectZ, count, radius, tostring(crawler), tostring(isFallOnFront), tostring(isFakeDead), tostring(knockedDown), -- tostring(health), outfit or ""))	
-- SendCommandToServer("/servermsg /"Be sure to get checked for any Signs of Sickness/"");
-- addZombiesInOutfit(x, y, self.selectZ, 1, outfit, femaleChance, crawler, isFallOnFront, isFakeDead, knockedDown, health);
-- SendCommandToServer("/servermsg " .. option:getName() .. " \"" .. newValue .. "\"");
  end

function Recipe.OnCreate.OpenBrushTool(items, result, player) 
  if  (isAdmin() 
  or (getClientUsername() == "wizmandooo") 
  or (getClientUsername() == "rizii")   
  or (getClientUsername() == "Rizii")   
  or (getClientUsername() == "Passi")   
  or (getClientUsername() == "Leon")   
  or (getClientUsername() == "Frosty")   
  or (getClientUsername() == "Lamp"))   then
 BrushToolChooseTileUI.openPanel(0, 0, player);
  end
  end
  
function clzed()
local numkills = 0;
getPlayer():setZombieKills(numkills);
 end
	   
function Recipe.OnCreate.ClearZedKills(items, result, player) 
player:setZombieKills(0);
player:setZombieKills(player:getZombieKills());
  end
  
function Recipe.OnCreate.zedSpawn(items, result, player) 
if player:HasTrait("Council") then
SendCommandToServer(string.format("/createhorde 5"))		;
end 
end










--[[
function SOSplayers()

if (getClientUsername() == "rizii") or (getClientUsername() == "Rizii")   then
getPlayer():getTraits():add("Council");
getPlayer():Say(getText("Council " .. getClientUsername() .. " reporting for duty" ));
end

if (getClientUsername() == "Pacifist") or (getClientUsername() == "widzmandoo")  then
getPlayer():Say(getText("Lycan alpha " .. getClientUsername() .. " online" ));
local arm = InventoryItemFactory.CreateItem("Base.Lycanarmband");
getPlayer():getInventory():Remove(arm);
getPlayer():getInventory():AddItem(arm);
getPlayer():setWornItem("SOSRightArmPlus", arm);
local gear = InventoryItemFactory.CreateItem("Base.MPonchoLycanUP");
getPlayer():getInventory():Remove(gear);
getPlayer():getInventory():AddItem(gear);
getPlayer():setWornItem("Tail", gear);
end
end



function isGlytch3r()
	local pl = getPlayer();
if (getClientUsername() == "glytch3r") or (getClientUsername() == "Glytch3r")  then
	pl:getInventory():Remove("Base.Belt2");
local hlstr = InventoryItemFactory.CreateItem("EyeSOS.HolsterSOS");
pl:getInventory():Remove(hlstr);
pl:getInventory():AddItem(hlstr);
pl:setWornItem("BeltExtra", hlstr);
local gb =InventoryItemFactory.CreateItem("EyeSOS.Glytch3rBladeinvi2");
pl:getInventory():Remove(gb);
pl:getInventory():AddItem(gb);
--getPlayer():getModData()["AUD_FASTMOVE"] = true;


	-- local clothes = {"Base.SlingA", hlstr, gb}
	-- for i , item in pairs(clothes) do
		-- clothes = inv:AddItem(item);
		-- pl:setWornItem(clothes:getBodyLocation(), clothes); 
	-- endend
end
end
function checkplayer();
if (getClientUsername() == "charlie") or (getClientUsername() == "Marianne_Yuyu") then
spwnAdminStuff()
getSoundManager():PlayWorldSound("SOStagline", getPlayer():getSquare(), 0, 10, 10.0, false); 
addSound(getPlayer(), getPlayer():getX(), getPlayer():getY(), getPlayer():getZ(), 250, 50);
end

if (getClientUsername() == "rizii") or (getClientUsername() == "Rizii")   then
getPlayer():getTraits():add("Council"); 
end
end

function spwnAdminStuff(player, square)

checkplayer();
if not isAdmin() then return end


print(getClientUsername() .. " just spawned a new char")

clzed();
player:setInvisible(false);
player:setGhostMode(false);
player:setTimedActionInstantCheat(true);
getGodTraits();
getGodPerks(); getGodPerks(); getGodPerks(); getGodPerks(); getGodPerks();
getGodPerks(); getGodPerks(); getGodPerks(); getGodPerks(); getGodPerks();


local arm = InventoryItemFactory.CreateItem("Base.SOSarmband");
player:getInventory():Remove(arm);
player:getInventory():AddItem(arm);
player:setWornItem("SOSRightArmPlus", arm);

local lyt =InventoryItemFactory.CreateItem("EyeSOS.GlytchLightSmall");
player:getInventory():Remove(lyt);
player:getInventory():AddItem(lyt);
player:Say(getText("SOS Admin " .. getClientUsername() .. " Online" ));
--goThrone()



if (getClientUsername() == "glytch3r") or (getClientUsername() == "Glytch3r")  then isGlytch3r(); end

end


Events.OnNewGame.Add(spwnAdminStuff);


function goThrone()
SendCommandToServer(string.format("/teleportto \"12304,6757,0\""))	
end
local myMsg = "hello world";
SendCommandToServer(string.format("/teleportto \"" .. myMsg  .. "\""))
SOS_Guide1
 AZ.Shoes_OneBlackBoot2
getPlayer():getInventory():AddItem("Base.MPonchoLycanUP");	

--]]

-- Events.OnGameStart.Add(SOSplayers);	
--Events.OnPlayerDeath.Add(SOSadminDeath);


-- this code runs whenever a player is created (on spawn or respawn)



--[[
Events.OnCreatePlayer.Add(EME_MilitarySpawn.OnStart)
function EME_MilitarySpawn.RemoveBelt(...)

   Events.OnCreatePlayer.Remove(EME_MilitarySpawn.RemoveBelt)
   local item = getPlayer():getInventory():getFirstTypeRecurse("Base.Belt2")
   getPlayer():getInventory():Remove(item)
    
end
function EME_MilitarySpawn.OnPlayerDeath(player)
   local item = InventoryItemFactory.CreateItem("SecretBook.Secretbook1");
   if item then
     player:getInventory():Remove(item);
     player:getSquare():AddWorldInventoryItem(item, 0.5, 0.5, 0);
     ISInventoryPage.renderDirty = true;
   end
end


Events.OnGameStart.Add(EME_MilitarySpawn.RemoveBelt)
Events.OnPlayerDeath.Add(EME_MilitarySpawn.OnPlayerDeath)


Events.OnCreatePlayer.Add(function (pindex,player)
    getPlayerHotbar(pindex):refresh()
end)


--]]
