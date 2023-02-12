
require "recipecode"


Recipe = Recipe or {}
Recipe.GetItemTypes = Recipe.GetItemTypes or {}
Recipe.OnCanPerform = Recipe.OnCanPerform or {}
Recipe.OnCreate = Recipe.OnCreate or {}
Recipe.OnGiveXP = Recipe.OnGiveXP or {}
Recipe.OnTest = Recipe.OnTest or {}

function Perkup(player, perkType)
    local perkLevel = player:getPerkLevel(perkType);
    if perkLevel < 10 then
        player:LevelPerk(perkType, false);
        player:getXp():setXPToLevel(perkType, player:getPerkLevel(perkType));
        SyncXp(player)
    end 
end

function Recipe.OnCreate.addreloading(items, result, player)                                                                  
Perkup(player, Perks.Reloading); end
function Recipe.OnCreate.addaiming(items, result, player)                                                                  
Perkup(player, Perks.Aiming); end
function Recipe.OnCreate.addnimble(items, result, player)                                                                  
Perkup(player, Perks.Nimble);	end
function Recipe.OnCreate.addsprinting(items, result, player)                                                                  
Perkup(player, Perks.Sprinting);	end
function Recipe.OnCreate.addsneak(items, result, player) 		                                                                 
Perkup(player, Perks.Sneak);	end
function Recipe.OnCreate.addlightfoot(items, result, player) 	                                                                 	
Perkup(player, Perks.Lightfoot);	end 
function Recipe.OnCreate.addmaintenance(items, result, player)                                                                  
Perkup(player, Perks.Maintenance); end
function Recipe.OnCreate.addblunt(items, result, player) 		                                                                 
Perkup(player, Perks.Blunt); end
function Recipe.OnCreate.addsmallblunt(items, result, player) 	                                                                 	
Perkup(player, Perks.SmallBlunt); end
function Recipe.OnCreate.addlongblade(items, result, player)                                                                  	
Perkup(player, Perks.LongBlade); end
function Recipe.OnCreate.addsmallblade(items, result, player) 	                                                                 
Perkup(player, Perks.SmallBlade); end
function Recipe.OnCreate.addaxe(items, result, player) 		                                                                 
Perkup(player, Perks.Axe); end
function Recipe.OnCreate.addspear(items, result, player) 	                                                                 
Perkup(player, Perks.Spear);	end
function Recipe.OnCreate.addelectricity(items, result, player)                                                                  	
Perkup(player, Perks.Electricity);	end	
function Recipe.OnCreate.addmetalwelding(items, result, player)                                                                  	
Perkup(player, Perks.MetalWelding);	end
function Recipe.OnCreate.addmechanics(items, result, player)                                                                  
Perkup(player, Perks.Mechanics);	end	
function Recipe.OnCreate.addwoodwork(items, result, player) 	                                                                 
Perkup(player, Perks.Woodwork); end	
function Recipe.OnCreate.addtailoring(items, result, player)                                                                  
Perkup(player, Perks.Tailoring);	end		
function Recipe.OnCreate.adddoctor(items, result, player) 	                                                                 
Perkup(player, Perks.Doctor);	end
function Recipe.OnCreate.addcooking(items, result, player)                                                                 
Perkup(player, Perks.Cooking);	end 		
function Recipe.OnCreate.addfarming(items, result, player)                                                                  
Perkup(player, Perks.Farming);	end	
function Recipe.OnCreate.addfishing(items, result, player)                                                                  
Perkup(player, Perks.Fishing);	end	
function Recipe.OnCreate.addtrapping(items, result, player)                                                                  
Perkup(player, Perks.Trapping);	end	
function Recipe.OnCreate.addfitness(items, result, player)                                                                  
Perkup(player, Perks.Fitness); end
function Recipe.OnCreate.addstrength(items, result, player)                                                                  	
Perkup(player, Perks.Strength); end