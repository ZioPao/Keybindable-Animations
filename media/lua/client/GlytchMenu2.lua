



AnimMenu = ISCollapsableWindow:derive("AnimMenu");
--require "SOS_Events_Functions"
AnimMenu.cheat = true
AnimMenu.instance = nil

local Commands = {};
Commands.GlytchAnimations = {};


 
function AnimMenu.openPanel(playerObj)
    if AnimMenu.instance == nil then
        local window = AnimMenu:new(1920-400, 1080-600-40, 155, 380, playerObj)
        window:initialise()
        window:addToUIManager()
      
    end   AnimMenu.instance = window
end

--[[ 
function ISCheatPanelUI.OnOpenPanel()
    if ISCheatPanelUI.instance==nil then
        ISCheatPanelUI.instance = ISCheatPanelUI:new (50, 200, 212, 350, getPlayer());
        ISCheatPanelUI.instance:initialise();
    end

    ISCheatPanelUI.instance:addToUIManager();
    ISCheatPanelUI.instance:setVisible(true);

    return ISCheatPanelUI.instance;
end ]]
------------------------               ---------------------------



--**************************            	   **************************
--							     header**
--**************************            	   **************************


	local opTitle1 = "Normal"
	local opTitle2 = "act1"
	local opTitle3 = "act2"
	local opTitle4 = "act3"
	local opTitle5 = "act4"
    local opTitle6 = "act5"

--**************************            	   **************************
--								 body***
--**************************            	   **************************
function AnimMenu:onClick(button)

    if button.internal == opTitle1 then print(opTitle1); getPlayer():Say(opTitle1) 
--start----------------------               ---------------------------start
    local player = getPlayer(); local playerId = player:getOnlineID()
	
player:getModData()['act1'] = nil
player:getModData()['act2'] = nil
player:getModData()['act3'] = nil
player:getModData()['act4'] = nil
player:getModData()['act5'] = nil
player:setVariable('isAct1', 'false');
player:setVariable('isAct2', 'false');
player:setVariable('isAct3', 'false');       
player:setVariable('isAct4', 'false');
player:setVariable('isAct5', 'false');

--end----------------------               ---------------------------end

	elseif button.internal == opTitle2 then -- print(opTitle2); getPlayer():Say(opTitle2) 
--start----------------------            ---------------------------start

    local player = getPlayer(); local playerId = player:getOnlineID()
        player:getModData()['act1'] = true
player:getModData()['act2'] = nil
player:getModData()['act3'] = nil
player:getModData()['act4'] = nil
player:getModData()['act5'] = nil
player:setVariable('isAct2', 'false');
player:setVariable('isAct3', 'false');       
player:setVariable('isAct4', 'false');
player:setVariable('isAct5', 'false');
        player:setVariable('isAct1', 'true');
--[[ if isClient() then sendServerCommand('GlytchAnimations', 'isAct1', {id = playerId, isAct1 =  args.isAct1})  end      ]]
--end----------------------            ---------------------------end

    elseif button.internal == opTitle3 then --print(opTitle3); getPlayer():Say(opTitle3) 
--start----------------------           ---------------------------start
    local player = getPlayer(); local playerId = player:getOnlineID()
player:getModData()['act1'] = nil
        player:getModData()['act2'] = true
player:getModData()['act3'] = nil
player:getModData()['act4'] = nil
player:getModData()['act5'] = nil
player:setVariable('isAct1', 'false');
        player:setVariable('isAct2', 'true');
player:setVariable('isAct3', 'false');       
player:setVariable('isAct4', 'false');
player:setVariable('isAct5', 'false');
--[[ if isClient() then sendServerCommand('GlytchAnimations', 'isAct2', {id = playerId, isAct2 =  args.isAct2})  end      ]]
--end----------------------            ---------------------------end
    elseif button.internal == opTitle4 then print(opTitle4); getPlayer():Say(opTitle4) 
--start----------------------         ---------------------------start
    local player = getPlayer(); local playerId = player:getOnlineID()
player:getModData()['act1'] = nil
player:getModData()['act2'] = nil
        player:getModData()['act3'] = true
player:getModData()['act4'] = nil
player:getModData()['act5'] = nil
player:setVariable('isAct1', 'false');
player:setVariable('isAct2', 'false');    
        player:setVariable('isAct3', 'true');
player:setVariable('isAct4', 'false');
player:setVariable('isAct5', 'false');
--[[ if isClient() then sendServerCommand('GlytchAnimations', 'isAct3', {id = playerId, isAct3 =  args.isAct3})  end    ]]  
--end----------------------            ---------------------------end
    elseif button.internal == opTitle5 then print(opTitle5); getPlayer():Say(opTitle5) 
--start----------------------         ---------------------------start
    local player = getPlayer(); local playerId = player:getOnlineID()
player:getModData()['act1'] = nil
player:getModData()['act2'] = nil
player:getModData()['act3'] = nil
        player:getModData()['act4'] = true
player:getModData()['act5'] = nil
player:setVariable('isAct1', 'false');
player:setVariable('isAct2', 'false');
player:setVariable('isAct3', 'false');
        player:setVariable('isAct4', 'true');
player:setVariable('isAct5', 'false');
--[[ if isClient() then sendServerCommand('GlytchAnimations', 'isAct4', {id = playerId, isAct4 =  args.isAct4})  end     ]] 
--end----------------------            ---------------------------end
    elseif button.internal == opTitle6 then print(opTitle6); getPlayer():Say('Not Available') 
--start----------------------         ---------------------------start
    local player = getPlayer(); local playerId = player:getOnlineID()
player:getModData()['act1'] = nil
player:getModData()['act2'] = nil
player:getModData()['act3'] = nil
player:getModData()['act4'] = nil
        player:getModData()['act5'] = true
player:setVariable('isAct1', 'false');
player:setVariable('isAct2', 'false');
player:setVariable('isAct3', 'false');       
player:setVariable('isAct4', 'false');
        player:setVariable('isAct5', 'true');
	
--[[ if isClient() then sendServerCommand('GlytchAnimations', 'isAct5', {id = playerId, isAct5 =  args.isAct5})  end   ]]  
end
end
    
function AnimMenu:createChildren()
    ISCollapsableWindow.createChildren(self);

    local th = self:titleBarHeight()
    local buttonWid = 80
    local buttonHgt = 24



    self.opt1 = ISButton:new(self:getWidth()/2 - buttonWid/2-15, th + 10, buttonWid, buttonHgt, opTitle1, self, AnimMenu.onClick);
    self.opt1.internal = opTitle1;
    self.opt1:initialise();
    self.opt1:instantiate();
    self:addChild(self.opt1);

    self.opt2 = ISButton:new(self:getWidth()/2 - buttonWid/2-15, self.opt1:getBottom() + 10, buttonWid, buttonHgt, opTitle2, self, AnimMenu.onClick);
    self.opt2.internal = opTitle2;
    self.opt2:initialise();
    self.opt2:instantiate();
    self:addChild(self.opt2);

    self.opt3 = ISButton:new(self:getWidth()/2 - buttonWid/2-15, self.opt2:getBottom() + 10, buttonWid, buttonHgt, opTitle3, self, AnimMenu.onClick);
    self.opt3.internal = opTitle3;
    self.opt3:initialise();
    self.opt3:instantiate();
    self:addChild(self.opt3);
	
	self.opt4 = ISButton:new(self:getWidth()/2 - buttonWid/2+12, self.opt3:getBottom() + 10, buttonWid-24, buttonHgt-5, opTitle4, self, AnimMenu.onClick);
    self.opt4.internal = opTitle4;
    self.opt4:initialise();
    self.opt4:instantiate();
    self:addChild(self.opt4);
    
    self.opt5 = ISButton:new(self:getWidth()/2 - buttonWid/2-15, self.opt4:getBottom() + 10, buttonWid, buttonHgt, opTitle5, self, AnimMenu.onClick);
    self.opt5.internal = opTitle5;
    self.opt5:initialise();
    self.opt5:instantiate();
    self:addChild(self.opt5);
    
    self.opt6 = ISButton:new(self:getWidth()/2 - buttonWid/2-15, self.opt5:getBottom() + 10, buttonWid, buttonHgt, opTitle6, self, AnimMenu.onClick);
    self.opt6.internal = opTitle6;
    self.opt6:initialise();
    self.opt6:instantiate();
    self:addChild(self.opt6);

end
--**************************            	   **************************
function AnimMenu:close()
    AnimMenu.instance = nil
    self:setVisible(false);
    self:removeFromUIManager()
end

function AnimMenu:new(x, y, width, height, character)
    local o = ISCollapsableWindow.new(self, x, y, width, height);
    o:setResizable(true)
    o.title = "AnimMenu"
    o.character = character
    return o
end



function AnimMenu.press(key)

	if (key==207) then --home
	AnimMenu.openPanel()
	return key
	end
	
	-- if key == getCore():getKey("Pause") then
	
	-- return key
	-- end
end
Events.OnKeyPressed.Add(AnimMenu.press);
--[[ 



function detecttiles()
if Glytch3rtest == true then
local sq = getPlayer():getSquare() 
    for i=0, sq:getObjects():size()-1 do
    local obj = sq:getObjects():get(i)
        local spr = obj:getSprite():getName()
        if spr and obj then
        print(spr) end
    end
    end
end

Events.OnPlayerMove.Add(detecttiles)
 ]]



--/////////////////////////////////////////////////////////////////////////
--//////////////////////////// Matías N. Salas ////////////////////////////
--///////////////////////////////////////////////////////////////////////// 


-- local function toggleAnimation(player,var)
-- local command = tostring(var)

    -- if player:getModData()['act1'] or player:getModData()['act2'] or player:getModData()['act3'] or player:getModData()['act4'] or player:getModData()['act5'] then
        -- if player:getVariableBoolean(command) == false then
            -- player:setVariable(command, 'true');
            -- if isClient() then
                -- sendClientCommand('GlytchAnimations', command, {var = true})  end  
            -- end
        -- else
            -- player:setVariable(command, 'false');
            -- if isClient() then
                -- sendClientCommand('GlytchAnimations', command, {var = false})  end  
            -- end
        -- end

--[[ 

Commands.GlytchAnimations.isAct1 = function(args)
    local source = getPlayer();
    local player = getPlayerByOnlineID(args.id)
    if source ~= player then
        if args.isAct1 then
            player:setVariable('isAct1', 'true');
        else
            player:setVariable('isAct1', 'false');
        end
    end
end
Commands.GlytchAnimations.isAct2 = function(args)
    local source = getPlayer();
    local player = getPlayerByOnlineID(args.id)
    if source ~= player then
        if args.isAct2 then
            player:setVariable('isAct2', 'true');
        else
            player:setVariable('isAct2', 'false');
        end
    end
end
Commands.GlytchAnimations.isAct3 = function(args)
    local source = getPlayer();
    local player = getPlayerByOnlineID(args.id)
    if source ~= player then
        if args.isAct3 then
            player:setVariable('isAct3', 'true');
        else
            player:setVariable('isAct3', 'false');
        end
    end
end
Commands.GlytchAnimations.isAct4 = function(args)
    local source = getPlayer();
    local player = getPlayerByOnlineID(args.id)
    if source ~= player then
        if args.isAct4 then
            player:setVariable('isAct4', 'true');
        else
            player:setVariable('isAct4', 'false');
        end
    end
end
Commands.GlytchAnimations.isAct5 = function(args)
    local source = getPlayer();
    local player = getPlayerByOnlineID(args.id)
    if source ~= player then
        if args.isAct5 then
            player:setVariable('isAct5', 'true');
        else
            player:setVariable('isAct5', 'false');
        end
    end
end
Events.OnServerCommand.Add(function(module, command, args)
	if Commands[module] and Commands[module][command] then
		Commands[module][command](args)
	end
end) ]]