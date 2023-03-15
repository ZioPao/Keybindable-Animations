KBA_KeyHandler = {}
KBA_KeyHandler.isFirstModifier = false
KBA_KeyHandler.isSecondModifier = false
KBA_KeyHandler.isThirdModifier = false

local KBA_EmotesBindedNoModifier = {
    ["KBA_Emote_1"] = "BicepCurl01",
    ["KBA_Emote_2"] = "BicepCurl02",
    ["KBA_Emote_3"] = "BicepCurl03",
    ["KBA_Emote_4"] = "BicepCurl04",
    ["KBA_Emote_5"] = "BicepCurl05",
    ["KBA_Emote_6"] = "BicepCurl06",
    ["KBA_Emote_7"] = "Burpees11",
    ["KBA_Emote_8"] = "Burpees12",
    ["KBA_Emote_9"] = "Pushup02",
    ["KBA_Emote_10"] = "Pushup03",
    ["KBA_Emote_11"] = "Squat03",
    ["KBA_Emote_12"] = "Squat04",
    ["KBA_Emote_13"] = "SitUp2",
    ["KBA_Emote_14"] = "SitUp3",
    ["KBA_Emote_15"] = "SmellBad",
    ["KBA_Emote_16"] = "SmellGag",
}

local KBA_EmotesBindedFirstModifier = {
    ["KBA_Emote_1"] = "VomitStart",
    ["KBA_Emote_2"] = "VomitLoop",
    ["KBA_Emote_3"] = "DrinkFloor",
    ["KBA_Emote_4"] = "PainHead1",
    ["KBA_Emote_5"] = "PainStomach1",
    ["KBA_Emote_6"] = "PainStomach2",
    ["KBA_Emote_7"] = "Cough",
    ["KBA_Emote_8"] = "PainArmL",
    ["KBA_Emote_9"] = "PainHandL",
    ["KBA_Emote_10"] = "PainLegL",
    ["KBA_Emote_11"] = "PainTorso",
    ["KBA_Emote_12"] = "PainLegR",
    ["KBA_Emote_13"] = "PainHandR",
    ["KBA_Emote_14"] = "PainArmR",
    ["KBA_Emote_15"] = "Crawl",
    ["KBA_Emote_16"] = "DuffelbagOn",
}

local KBA_EmotesBindedSecondModifier = {
    ["KBA_Emote_1"] = "DuffelbagLoot",
    ["KBA_Emote_2"] = "DuffelbagOff",
    ["KBA_Emote_3"] = "ShiftWeight",
    ["KBA_Emote_4"] = "Burp",
    ["KBA_Emote_5"] = "ChewNails",
    ["KBA_Emote_6"] = "FeelFaint",
    ["KBA_Emote_7"] = "Sway",
    ["KBA_Emote_8"] = "Facepalm",
    ["KBA_Emote_9"] = "bentdouble",
    ["KBA_Emote_10"] = "WashFace",
    ["KBA_Emote_11"] = "WashHands",
    ["KBA_Emote_12"] = "PassoutBack",
    ["KBA_Emote_13"] = "PassoutFront",
    ["KBA_Emote_14"] = "Fall",
    ["KBA_Emote_15"] = "Man1",
    ["KBA_Emote_16"] = "Man2",
}

local KBA_EmotesBindedThirdModifier = {
    ["KBA_Emote_1"] = "Man3",
    ["KBA_Emote_2"] = "Man4",
    ["KBA_Emote_3"] = "Man5",
    ["KBA_Emote_4"] = "Man6",
    ["KBA_Emote_5"] = "saluteformal",
    ["KBA_Emote_6"] = "salutecasual",
    ["KBA_Emote_7"] = "Yawn",
    ["KBA_Emote_8"] = "TStretch",
    ["KBA_Emote_9"] = "AwakeToAsleep",
    ["KBA_Emote_10"] = "DragDown",
    ["KBA_Emote_11"] = "Limp",
    ["KBA_Emote_12"] = "LimpAssist",
    ["KBA_Emote_13"] = "Walk002",
    ["KBA_Emote_14"] = "Walk003",
    ["KBA_Emote_15"] = "Walk005",
    ["KBA_Emote_16"] = "Z_Eat1",

}


local KBA_EmotesBindedFirstSecondModifier = {
    ["KBA_Emote_1"] = "Z_Eat2",
    ["KBA_Emote_2"] = "Z_LayIdle1",
    ["KBA_Emote_3"] = "Z_LayIdle2",
    ["KBA_Emote_4"] = "Z_Lunge1",
    ["KBA_Emote_5"] = "Z_Lunge2",
    ["KBA_Emote_6"] = "Z_Lunge3",
    ['KBA_Emote_7'] = "Scarecrow",
    ['KBA_Emote_8'] = "Skeleton",
}


local function ManageKeys(key)


    for _,bind in ipairs(KBA_Bindings) do
        if key == getCore():getKey(bind.value) then


            if bind.value == "KBA_Exit" then
                print("Trying to stop animation")
                local player = getPlayer()

                if not isClient() and not isServer() then
                    player:setVariable("EmotePlaying", false)

                    player:setVariable("isRPCrawling", false)       -- TODO Hotfix, make this a bit better
                    player:setVariable("isRPScrambling", false)
                    player:setvariable("isRPLimping", false)
                else
                    sendClientCommand(player, "KBA", "SendAnimVariable", { playerID = player:getOnlineID(), variableName = "EmotePlaying", check = 'false' })
                    
                    sendClientCommand(player, "KBA", "SendAnimVariable", { playerID = player:getOnlineID(), variableName = "isRPCrawling", check = 'false' })
                    sendClientCommand(player, "KBA", "SendAnimVariable", { playerID = player:getOnlineID(), variableName = "isRPScrambling", check = 'false' })
                    sendClientCommand(player, "KBA", "SendAnimVariable", { playerID = player:getOnlineID(), variableName = "isRPLimping", check = 'false' })

                end


                return
            end



            if bind.value == "KBA_Modifier_1" or bind.value == "KBA_Modifier_2" then
                return
            end

            local emoteIndex = bind.value
            local chosenBinds

            
            -- First combos

            if KBA_KeyHandler.isFirstModifier and KBA_KeyHandler.isSecondModifier then
                print("Combo 1 and 2")
                chosenBinds = KBA_EmotesBindedFirstSecondModifier
            elseif KBA_KeyHandler.isFirstModifier then
                chosenBinds = KBA_EmotesBindedFirstModifier
                print("First modifier")
            elseif KBA_KeyHandler.isSecondModifier then
                chosenBinds = KBA_EmotesBindedSecondModifier
                print("Second modifier")
            elseif KBA_KeyHandler.isThirdModifier then
                chosenBinds = KBA_EmotesBindedThirdModifier
                print("Third modifier")
            else
                chosenBinds = KBA_EmotesBindedNoModifier
                print("No modifier")

            end

            local emote = chosenBinds[emoteIndex]
            print(emote)

            if emote == nil then
                return
                print("Invalid emote")
            end

            if not KBA_Handler.CheckEmote(chosenBinds[emoteIndex]) then
                getPlayer():playEmote(chosenBinds[emoteIndex])
            end

            break
        end
    end




end


local function CheckModifierKey(key, modifierEnum)


    if modifierEnum > 3 then
        return false
    end
    local chosenModifierBind = KBA_Bindings[modifierEnum + 1]
    if key == getCore():getKey(chosenModifierBind.value) then
        return true
    end

    return false
end


local function ManageModifier(key)

    if CheckModifierKey(key, 1) then    -- RCTRL
        KBA_KeyHandler.isFirstModifier = true
    elseif CheckModifierKey(key, 2) then    -- RALT
        KBA_KeyHandler.isSecondModifier = true
    elseif CheckModifierKey(key,3 ) then        -- INS
        KBA_KeyHandler.isThirdModifier = true
    end
   
end

local function DisableModifier(key)
    if CheckModifierKey(key, 1) then    -- RCTRL
        KBA_KeyHandler.isFirstModifier = false
    elseif CheckModifierKey(key, 2) then    -- RALT
        KBA_KeyHandler.isSecondModifier = false
    elseif CheckModifierKey(key,3 ) then        -- INS
        KBA_KeyHandler.isThirdModifier = false
    end
end

Events.OnKeyPressed.Add(ManageKeys)
Events.OnKeyKeepPressed.Add(ManageModifier)
Events.OnCustomUIKeyReleased.Add(DisableModifier)