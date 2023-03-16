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
    ["KBA_Emote_7"] = "Skeleton",
    ["KBA_Emote_8"] = "Scarecrow",
    ["KBA_Emote_9"] = "wavehi",
    ["KBA_Emote_10"] = "wavehi02",
    ["KBA_Emote_11"] = "wavebye",
    ["KBA_Emote_12"] = "clap",
    ["KBA_Emote_13"] = "clap02",
    ["KBA_Emote_14"] = "thumbsup",
    ["KBA_Emote_15"] = "thankyou",
    ["KBA_Emote_16"] = "insult",
}

local KBA_EmotesBindedFirstThirdModifier = {
    ["KBA_Emote_1"] = "stop",
    ["KBA_Emote_2"] = "stop02",
    ["KBA_Emote_3"] = "surrender",
    ["KBA_Emote_4"] = "thumbsdown",
    ["KBA_Emote_5"] = "followme",
    ["KBA_Emote_6"] = "comehere",
    ["KBA_Emote_7"] = "comehere02",
    ["KBA_Emote_8"] = "yes",
    ["KBA_Emote_9"] = "no",
    ["KBA_Emote_10"] = "shrug",
    ["KBA_Emote_11"] = "undecided",
    ["KBA_Emote_12"] = "ceasefire",
    ["KBA_Emote_13"] = "signalok",
    ["KBA_Emote_14"] = "moveout",
    ["KBA_Emote_15"] = "freeze",
    ["KBA_Emote_16"] = "followbehind",

}

local KBA_EmotesBindedSecondThirdModifier = {
    ["KBA_Emote_1"] = "signalfire",
    ["KBA_Emote_2"] = "comefront",
    ["KBA_Emote_3"] = "saluteformal",
    ["KBA_Emote_4"] = "salutecasual",
}

local function ManageKeys(key)


    for _,bind in ipairs(KBA_Bindings) do
        if key == getCore():getKey(bind.value) then


            if bind.value == "KBA_Exit" then
                print("Trying to stop animation")
                local player = getPlayer()
                if not isClient() and not isServer() then
                    if KBA_Handler.chosenValue then
                        player:setVariable(KBA_Handler.chosenValue, false)
                        KBA_Handler.chosenValue = nil
                    else
                        player:setVariable("EmotePlaying", false)
                    end
                else
                    if KBA_Handler.chosenValue then
                        sendClientCommand(player, "KBA", "SendAnimVariable", { playerID = player:getOnlineID(), variableName = KBA_Handler.chosenValue, check = 'false' })
                        KBA_Handler.chosenValue = nil
                    else
                        sendClientCommand(player, "KBA", "SendAnimVariable", { playerID = player:getOnlineID(), variableName = "EmotePlaying", check = 'false' })
                    end
                end

                return
            end

            if bind.value == "KBA_Modifier_1" or bind.value == "KBA_Modifier_2" or bind_value == "KBA_Modifier_3" then
                return
            end

            local emoteIndex = bind.value
            local chosenBinds


            -- First combos
            if KBA_KeyHandler.isFirstModifier and KBA_KeyHandler.isSecondModifier then
                print("Combo 1 and 2")
                chosenBinds = KBA_EmotesBindedFirstSecondModifier
            elseif KBA_KeyHandler.isFirstModifier and KBA_KeyHandler.isThirdModifier then
                print("Combo 1 and 3")
                chosenBinds = KBA_EmotesBindedFirstThirdModifier
            elseif KBA_KeyHandler.isSecondModifier and KBA_KeyHandler.isThirdModifier then
                print("Combo 2 and 3")
                chosenBinds = KBA_EmotesBindedSecondThirdModifier
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
            --print(emote)

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