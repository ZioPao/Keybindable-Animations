GSA_KeyHandler = {}
GSA_KeyHandler.isFirstModifier = false
GSA_KeyHandler.isSecondModifier = false
GSA_KeyHandler.isThirdModifier = false

local GSA_EmotesBindedNoModifier = {
    ["GSA_Emote_1"] = "BicepCurl01",
    ["GSA_Emote_2"] = "BicepCurl02",
    ["GSA_Emote_3"] = "BicepCurl03",
    ["GSA_Emote_4"] = "BicepCurl04",
    ["GSA_Emote_5"] = "BicepCurl05",
    ["GSA_Emote_6"] = "BicepCurl06",
    ["GSA_Emote_7"] = "Burpees11",
    ["GSA_Emote_8"] = "Burpees12",
    ["GSA_Emote_9"] = "Pushup02",
    ["GSA_Emote_10"] = "Pushup03",
    ["GSA_Emote_11"] = "Squat03",
    ["GSA_Emote_12"] = "Squat04",
    ["GSA_Emote_13"] = "SitUp2",
    ["GSA_Emote_14"] = "SitUp3",
    ["GSA_Emote_15"] = "SmellBad",
    ["GSA_Emote_16"] = "SmellGag",
}

local GSA_EmotesBindedFirstModifier = {
    ["GSA_Emote_1"] = "VomitStart",
    ["GSA_Emote_2"] = "VomitLoop",
    ["GSA_Emote_3"] = "DrinkFloor",
    ["GSA_Emote_4"] = "PainHead1",
    ["GSA_Emote_5"] = "PainStomach1",
    ["GSA_Emote_6"] = "PainStomach2",
    ["GSA_Emote_7"] = "Cough",
    ["GSA_Emote_8"] = "PainArmL",
    ["GSA_Emote_9"] = "PainHandL",
    ["GSA_Emote_10"] = "PainLegL",
    ["GSA_Emote_11"] = "PainTorso",
    ["GSA_Emote_12"] = "PainLegR",
    ["GSA_Emote_13"] = "PainHandR",
    ["GSA_Emote_14"] = "PainArmR",
    ["GSA_Emote_15"] = "Crawl",
    ["GSA_Emote_16"] = "DuffelbagOn",
}

local GSA_EmotesBindedSecondModifier = {
    ["GSA_Emote_1"] = "DuffelbagLoot",
    ["GSA_Emote_2"] = "DuffelbagOff",
    ["GSA_Emote_3"] = "ShiftWeight",
    ["GSA_Emote_4"] = "Burp",
    ["GSA_Emote_5"] = "ChewNails",
    ["GSA_Emote_6"] = "FeelFaint",
    ["GSA_Emote_7"] = "Sway",
    ["GSA_Emote_8"] = "Facepalm",
    ["GSA_Emote_9"] = "bentdouble",
    ["GSA_Emote_10"] = "WashFace",
    ["GSA_Emote_11"] = "WashHands",
    ["GSA_Emote_12"] = "passoutback",
    ["GSA_Emote_13"] = "passoutfront",
    ["GSA_Emote_14"] = "Fall",
    ["GSA_Emote_15"] = "Man1",
    ["GSA_Emote_16"] = "Man2",
}

local GSA_EmotesBindedThirdModifier = {
    ["GSA_Emote_1"] = "Man3",
    ["GSA_Emote_2"] = "Man4",
    ["GSA_Emote_3"] = "Man5",
    ["GSA_Emote_4"] = "Man6",
    ["GSA_Emote_5"] = "saluteformal",
    ["GSA_Emote_6"] = "salutecasual",
    ["GSA_Emote_7"] = "Yawn",
    ["GSA_Emote_8"] = "TStretch",
    ["GSA_Emote_9"] = "AwakeToAsleep",
    ["GSA_Emote_10"] = "DragDown",
    ["GSA_Emote_11"] = "Limp",
    ["GSA_Emote_12"] = "LimpAssist",
    ["GSA_Emote_13"] = "Walk002",
    ["GSA_Emote_14"] = "Walk003",
    ["GSA_Emote_15"] = "Walk005",
    ["GSA_Emote_16"] = "Z_Eat1",

}


local GSA_EmotesBindedFirstSecondModifier = {
    ["GSA_Emote_1"] = "Z_Eat2",
    ["GSA_Emote_2"] = "Z_LayIdle1",
    ["GSA_Emote_3"] = "Z_LayIdle2",
    ["GSA_Emote_4"] = "Z_Lunge1",
    ["GSA_Emote_5"] = "Z_Lunge2",
    ["GSA_Emote_6"] = "Z_Lunge3",
}


local function ManageKeys(key)


    for _,bind in ipairs(GSA_Bindings) do
        if key == getCore():getKey(bind.value) then


            if bind.value == "GSA_Exit" then
                print("Trying to stop animation")
                local player = getPlayer()
                player:setVariable("EmotePlaying", false)
                return
            end



            if bind.value == "GSA_Modifier_1" or bind.value == "GSA_Modifier_2" then
                return
            end

            local emoteIndex = bind.value
            local chosenBinds

            
            -- First combos

            if GSA_KeyHandler.isFirstModifier and GSA_KeyHandler.isSecondModifier then
                print("Combo 1 and 2")
                chosenBinds = GSA_EmotesBindedFirstSecondModifier
            elseif GSA_KeyHandler.isFirstModifier then
                chosenBinds = GSA_EmotesBindedFirstModifier
                print("First modifier")
            elseif GSA_KeyHandler.isSecondModifier then
                chosenBinds = GSA_EmotesBindedSecondModifier
                print("Second modifier")
            elseif GSA_KeyHandler.isThirdModifier then
                chosenBinds = GSA_EmotesBindedThirdModifier
                print("Third modifier")
            else
                chosenBinds = GSA_EmotesBindedNoModifier
                print("No modifier")

            end

            local emote = chosenBinds[emoteIndex]
            print(emote)

            if emote == nil then
                return
                print("Invalid emote")
            end

            if not GSA_Handler.CheckEmote(chosenBinds[emoteIndex]) then
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
    local chosenModifierBind = GSA_Bindings[modifierEnum + 1]
    if key == getCore():getKey(chosenModifierBind.value) then
        return true
    end

    return false
end


local function ManageModifier(key)

    if CheckModifierKey(key, 1) then    -- RCTRL
        GSA_KeyHandler.isFirstModifier = true
    elseif CheckModifierKey(key, 2) then    -- RALT
        GSA_KeyHandler.isSecondModifier = true
    elseif CheckModifierKey(key,3 ) then        -- INS
        GSA_KeyHandler.isThirdModifier = true
    end
   
end

local function DisableModifier(key)
    if CheckModifierKey(key, 1) then    -- RCTRL
        GSA_KeyHandler.isFirstModifier = false
    elseif CheckModifierKey(key, 2) then    -- RALT
        GSA_KeyHandler.isSecondModifier = false
    elseif CheckModifierKey(key,3 ) then        -- INS
        GSA_KeyHandler.isThirdModifier = false
    end
end

Events.OnKeyPressed.Add(ManageKeys)
Events.OnKeyKeepPressed.Add(ManageModifier)
Events.OnCustomUIKeyReleased.Add(DisableModifier)