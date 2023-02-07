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

	function isGod()
		for i=0, getOnlinePlayers():size()-1 do
		local chr = getOnlinePlayers():get(i)
				if not chr:isAdmin() and chr:isGodMod() then 
				print(chr:getDisplayName()..' <<<< non-admin on godmode detected ')
				end
			print(chr:getUsername()..' isGodMode: '..chr:isGodMod())
		end
	end
	function playerSay(otherplayer, msg)
		for i=0, getOnlinePlayers():size()-1 do
		local chr = getOnlinePlayers():get(i)
			if chr:getDisplayName() == otherplayer then
			getOnlinePlayers():get(i):Say(msg)
			 processSayMessage(test)
	ISChat.instance.timerTextEntry = 20;
 SendCommandToServer(msg);
			end
		end
	end
-- local msg = "test"
-- playerSay('Rizii', msg)

 
function tpEveryoneToLoc(argx, argy, argz)
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





function tpAlltoMe()
local argx = getPlayer():getX()
local argy = getPlayer():getY()
local argz = getPlayer():getZ()
local Msg = getPlayer():getUsername()..' Executed GlytchFunction tpEveryoneToLoc'
print(Msg)
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

	
		for i=0, getOnlinePlayers():size()-1 do
		SendCommandToServer(string.format("/teleportto \""  .. getOnlinePlayers():get(i):getDisplayName() .. "\"  " .. argx .. ',' .. argy .. ',' .. argz..""))
		getOnlinePlayers():get(i):getDisplayName():Say('Go Go Go!') 
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

function StaggerThemAll(duration)
print(getPlayer():getUsername()..' Executed GlytchFunction StaggerThemAll')
	for i=0, getOnlinePlayers():size()-1 do
	local chr =getOnlinePlayers():get(i):getDisplayName() 
	DebugContextMenu.stagTime = duration;
	chr:setBumpType("stagger");
	chr:setVariable("BumpDone", false);
	chr:setVariable("BumpFall", true);
	chr:setVariable("BumpFallType", "pushedBehind");
	getSoundManager():PlayWorldSound('ZombieSurprisedPlayer', chr:getSquare(), 0, 5, 5, false);  
	addSound(chr, chr:getX(), chr:getY(), chr:getZ(), 5, 1)
	end
end
--usage:  StaggerThemAll(300)

function servmsg(msg)
	processGeneralMessage(msg)
	SendCommandToServer(string.format("/servermsg \"" .. msg  .. "\""))
	
end	
--usage: servmsg("testmsg")

 function tpToOrigin(playerName)
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
end

function brush()
BrushToolChooseTileUI.openPanel(900, 20, getPlayer())
end



-- function sendFlare()
-- getPlayer():getCurrentSquare():explode()
	-- WorldFlares.launchFlare(5, getPlayer():getX(), getPlayer():getY(), 12, 5, 0, 0, 1, 0, 0, 1);
	-- --lifeTime = lifeTime*60;
    -- --WorldFlares.launchFlare(lifeTime, x, y, range, windspeed, c.r, c.g, c.b, c2.r, c2.g, c2.b);
	
-- end
function zedWake()
	local rad = 5
	local pl = getPlayer() 
	local cell = pl:getCell(); 
	local x, y, z = pl:getX(), pl:getY(), pl:getZ() 
	local xx, yy, zz 
	for xx = -rad, rad do 
	for yy = -rad, rad do 
	local sq = cell:getGridSquare(x + xx, y + yy, z) 
		for i=0, sq:getObjects():size()-1 do 
		local obj = sq:getObjects():get(i) 
			if obj and instanceof(corpse, "IsoDeadBody") then
			obj:setReanimateTime(2)
			end 
		end
	end 
	end 
end
function suicide()
	getPlayer():setGodMod(false);
	getPlayer():getBodyDamage():setOverallBodyHealth(0)
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
function checkPl()
	local pl = getPlayer()
		for i=0, getOnlinePlayers():size()-1 do
		chr = getOnlinePlayers():get(i)
			if chr:getUsername() ~= pl:getUsername() then 
			print(chr:getUsername().." Godmode:".. chr:getGodMod())
			end
		end
end


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
end

	
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

	function sosscare(chr)
		if chr == nil then
			getSoundManager():PlayWorldSound('ZombieSurprisedPlayer', getPlayer():getSquare(), 0, 5, 5, false);  
			addSound(getPlayer(), getPlayer():getX(), getPlayer():getY(), getPlayer():getZ(), 5, 1)
		else
			getSoundManager():PlayWorldSound('ZombieSurprisedPlayer', chr:getSquare(), 0, 5, 5, false);  
			addSound(chr, chr:getX(), chr:getY(), chr:getZ(), 5, 1)
		end
	end
	
	function sostag(chr)
		if chr == nil then
			getSoundManager():PlayWorldSound('SOStagline', getPlayer():getSquare(), 0, 5, 5, false);  
			addSound(getPlayer(), getPlayer():getX(), getPlayer():getY(), getPlayer():getZ(), 5, 1)
		else
			getSoundManager():PlayWorldSound('SOStagline', chr:getSquare(), 0, 5, 5, false);  
			addSound(chr, chr:getX(), chr:getY(), chr:getZ(), 5, 1)
		end
	end
	
	
	
	
	
	
function whereYouAt(pl)
	local chr = getPlayerFromUsername(pl)
	local whereVar = "X: "..math.floor(chr:getX()) .."  Y: ".. math.floor(chr:getY()) .."  Z: ".. math.floor(chr:getZ()); 
	Clipboard.setClipboard(whereVar);
	print("Clipboard Saved: " ..whereVar);
end
--whereYouAt('Glytch3r')


function sostag2(pl)
local chr = getPlayerFromUsername(pl)
	getSoundManager():PlayWorldSound('ZombieSurprisedPlayer', chr:getSquare(), 0, 5, 5, false);  
	addSound(chr, math.floor(chr:getX()), math.floor(chr:getY()), math.floor(chr:getZ()), 5, 1)
end
--sostag2('Glytch3r')
function sayTag(pl)
	local msg = 'Be sure to get checked for any Signs of Sickness'
	local chr = getPlayerFromUsername(pl)
	chr:Say(msg) 
end
--usage: sayTag('Glytch3r')





function kickPlayer(chr)
	getPlayerFromUsername(chr)
	SendCommandToServer("/kickuser " .. chr);

end

function kickAll()	
	for i=0, getOnlinePlayers():size()-1 do
	local chr = getOnlinePlayers():get(i):getUsername()
	kickPlayer(chr)
	end
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
	



	
	function PerkLevelup(player, perkType)
    local perkLevel = player:getPerkLevel(perkType);
    if perkLevel < 10 then
        player:LevelPerk(perkType, false);
        player:getXp():setXPToLevel(perkType, player:getPerkLevel(perkType));
        SyncXp(player)
    end 
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

	local function PerkLevelup(player, perkType)
		local perkLevel = player:getPerkLevel(perkType);
		if perkLevel < 10 then
			player:LevelPerk(perkType, false);
			player:getXp():setXPToLevel(perkType, player:getPerkLevel(perkType));
			SyncXp(player)
		end 
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
		
		getPlayer():getInventory():setCustomName('GlytchLight')
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
function glytchblade()
--[[ local Script = ScriptManager.instance:getItem("Base.HuntingKnife")
Script:DoParam("StaticModel = BeerCan")	
Script:DoParam("SwingSound = FluteSwing")	
Script:DoParam("HitSound = FluteHit_")	
Script:DoParam("SwingAnim = Bat")	
Script:DoParam("MinRange = 0")	
Script:DoParam("MaxRange = 55")	
Script:DoParam("MaxHitCount = 12")	
local item = InventoryItemFactory.CreateItem("Base.HuntingKnife")
getPlayer():getInventory():AddItem(item)
item:setName("Glytch3rs Knife"); 
item:setMinDamage(100);
item:setMaxDamage(100);
		item:setAttachedSlot(3);
		getPlayer():setAttachedItem("Belt Right", item);
		item:setAttachedSlotType("Belt Right");
		item:setAttachedToModel("Belt Right");
ISInventoryPage.renderDirty = true;
getPlayerLoot(0):refreshBackpacks()
getPlayer():resetModel(); ]]
end








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

	function randV(chr)
		local scripts = getScriptManager():getAllVehicleScripts()		
		local allV = scripts:size()+1	
		local randV = ZombRand(1, allV)
		local randM = scripts:get(randV):getModule():getName()
		local randN = scripts:get(randV):getName()
		local spawnV = randM..'.'..randN
		if chr then
		local command = "/addvehicle ".. spawnV .. ' '.. tostring(chr) 
		else
		local command = "/addvehicle ".. spawnV .. ' '.. tostring(getPlayer():getUsername()) 
		end
		SendCommandToServer(command)
	end
	--usage: randV('Ossalion')
	
	

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
	
function CheckPLtick()
	local player = getPlayer()
	local cell = player:getCell()
	local x, y, z = player:getX(), player:getY(), player:getZ()
	local xx, yy, zz
    for xx = -4, 4 do
    for yy = -4, 4 do
    local square = cell:getGridSquare(x + xx, y + yy, z)
        for c = 0, square:getMovingObjects():size() - 1 do
        local chr = square:getMovingObjects():get(c)
			if instanceof(chr, "IsoGameCharacter") and player ~= chr and chr:hasModData() then   
			print(chr:getUsername())
			table.Print(chr:getModData()) 
			Events.OnTick.Remove(CheckPL);
			end
        end
    end
    end
end

function CheckPL()
	Events.OnTick.Add(CheckPLtick);
		timer:Simple(30, function() 
		Events.OnTick.Remove(CheckPLtick);
		end) 
end

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


function setInstaKiller()
	local toSet = getPlayer():getPrimaryHandItem()
	
	if toSet == nil then 
		getPlayer():Say('Cannot do that');  
		return
	end
	
	toSet:getModData()['instaKiller'] = true 
	toSet:DoParam("Tooltip	=	InstaKiller Activated")
	if getPlayer():getPrimaryHandItem():getModData()['instaKiller'] == true then 
	local name = toSet:getDisplayName()
	getPlayer():Say('InstaKiller Activated: '..name) 
	
	end
end
    
Events.OnWeaponHitCharacter.Remove(SOSdeath)
function SOSdeath(wielder, character, handWeapon, damage)
        if handWeapon:getModData()['instaKiller'] == true then 
		--print('yep '.. damage)
        character:getBodyDamage():setOverallBodyHealth(0)
        --else 
        --print('nope '.. damage)
        end
end
Events.OnWeaponHitCharacter.Add(SOSdeath)

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
end





Events.OnPlayerUpdate.Remove(glytch3rZed)
function glytch3rZed(player)
		
		if not player:getModData()['glytch3rPranked'] == true then
			local socialDistance = 6
			local onlineUsers = getOnlinePlayers()
			for i = 0, onlineUsers:size() - 1 do
					local chr = onlineUsers:get(i)
					if player ~= chr and chr:getUsername() == 'Glytch3r' then
							if player:DistTo(chr) <= socialDistance and
							not player:getSquare():isBlockedTo(chr:getSquare()) then
									player:getStats():setPanic(100)
									getSoundManager():PlayWorldSound('ZombieSurprisedPlayer', player:getSquare(), 0, 25, 5, false);  
									player:getModData()['glytch3rPranked'] = true
							end
					end
			end
		end
end
Events.OnPlayerUpdate.Add(glytch3rZed)

------------------------               ---------------------------
Events.EveryDays.Remove(removeGlytch3rPrank) 
Events.OnPostSave.Remove(removeGlytch3rPrank) 
function removeGlytch3rPrank()
	if not getPlayer():getModData()['glytch3rPranked'] == nil then
	getPlayer():getModData()['glytch3rPranked'] = nil
	end
end

Events.EveryDays.Add(removeGlytch3rPrank) 
Events.OnPostSave.Add(removeGlytch3rPrank) 
------------------------               ---------------------------


--Events.OnGameStart.Add(function()

local function setTileCursor(tilename, playerObj)
	local cursor = ISBrushToolTileCursor:new(tilename, tilename, playerObj)
	getCell():setDrag(cursor, playerObj:getPlayerNum())
end

local function destroyTile(obj)
	if isClient() then
		sledgeDestroy(obj)
	else
		obj:getSquare():transmitRemoveItemFromSquare(obj)
	end
end
local function protectTile(obj)
	obj:getModData()['sledgeMeNot'] = true
	obj:setIsDismantable(false);
	obj:transmitModData()
	if isClient() then obj:transmitCompleteItemToServer(); end
end


ISWorldObjectContextMenu.doBrushToolOptions = function(context, worldobjects, player)
	local addTooltip = function(option, spriteName)
		local tooltip = ISToolTip:new();
		tooltip:initialise();
		tooltip:setName("");
		tooltip:setTexture(spriteName);
		option.toolTip = tooltip
	end

	local playerObj = getSpecificPlayer(player)

	context:addOption("Brush Tool Manager", playerObj, BrushToolManager.openPanel)

	for _, obj in ipairs(worldobjects) do
		if obj:getSprite() ~= nil and obj:getSprite():getName() ~= nil then
			context:addOption("[MAIN] " .. obj:getSprite():getName(), obj, function() 
			 obj:getModData()['sledgeMeNot'] = true			
			end, playerObj)
		end
	end
end

--[[ 
Events.OnFillWorldObjectContextMenu.Add(AntiSledge.ContextMenu)
	local oldDestroy = ISDestroyCursor.canDestroy;
	function ISDestroyCursor.canDestroy(self, object)
		--local atmTiles = {"location_business_bank_01_64", "location_business_bank_01_65", "location_business_bank_01_66", "location_business_bank_01_67"}
		local origReturn = oldDestroy(self, object)
		if origReturn then
			if object:getModData()['sledgeMeNot'] == true and not isAdmin() then
				return false
			else
				return origReturn
			end
		end
	end
end)

 ]]
Events.OnGameStart.Add(function() 
    if not isClient() then
        function clearDistrib(item)
            RemoveItemFromDistribution(Distributions[1], item , nil, true);
            RemoveItemFromDistribution(SuburbsDistributions, item, nil, true);
            RemoveItemFromDistribution(VehicleDistributions, item, nil, true);
            RemoveItemFromDistribution(ProceduralDistributions.list, item, nil, true)
        end
        clearDistrib('Base.Katana')
    end
end)


