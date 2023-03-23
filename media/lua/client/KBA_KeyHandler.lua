KBA_KeyHandler = {}
KBA_KeyHandler.isFirstModifier = false
KBA_KeyHandler.isSecondModifier = false
KBA_KeyHandler.isThirdModifier = false

local KBA_EmotesBindedNoModifier = {
    ["KBA_Emote_1"] = "CrawlInteractive",
    ["KBA_Emote_2"] = "ScrambleBackInteractive",
    ["KBA_Emote_3"] = "LimpInteractive",
    ["KBA_Emote_4"] = "InjuryInteractive",
    ["KBA_Emote_5"] = "BicepCurl01",
    ["KBA_Emote_6"] = "BicepCurl02",
    ["KBA_Emote_7"] = "BicepCurl03",
    ["KBA_Emote_8"] = "BicepCurl04",
    ["KBA_Emote_9"] = "BicepCurl05",
    ["KBA_Emote_10"] = "BicepCurl06",
    ["KBA_Emote_11"] = "Burpees11",
    ["KBA_Emote_12"] = "Burpees12",
    ["KBA_Emote_13"] = "Pushup02",
    ["KBA_Emote_14"] = "Pushup03",
    ["KBA_Emote_15"] = "Squat03",
    ["KBA_Emote_16"] = "Squat04",
}

local KBA_EmotesBindedFirstModifier = {
    ["KBA_Emote_1"] = "SitUp2",
    ["KBA_Emote_2"] = "SitUp3",
    ["KBA_Emote_3"] = "SmellBad",
    ["KBA_Emote_4"] = "SmellGag",
    ["KBA_Emote_5"] = "VomitStart",
    ["KBA_Emote_6"] = "VomitLoop",
    ["KBA_Emote_7"] = "DrinkFloor",
    ["KBA_Emote_8"] = "PainHead1",
    ["KBA_Emote_9"] = "PainStomach1",
    ["KBA_Emote_10"] = "PainStomach2",
    ["KBA_Emote_11"] = "Cough",
    ["KBA_Emote_12"] = "PainArmL",
    ["KBA_Emote_13"] = "PainHandL",
    ["KBA_Emote_14"] = "PainLegL",
    ["KBA_Emote_15"] = "PainTorso",
    ["KBA_Emote_16"] = "PainLegR",
}

local KBA_EmotesBindedSecondModifier = {
    ["KBA_Emote_1"] = "PainHandR",
    ["KBA_Emote_2"] = "PainArmR",
    ["KBA_Emote_3"] = "Crawl",
    ["KBA_Emote_4"] = "DuffelbagOn",
    ["KBA_Emote_5"] = "DuffelbagLoot",
    ["KBA_Emote_6"] = "DuffelbagOff",
    ["KBA_Emote_7"] = "ShiftWeight",
    ["KBA_Emote_8"] = "Burp",
    ["KBA_Emote_9"] = "ChewNails",
    ["KBA_Emote_10"] = "FeelFaint",
    ["KBA_Emote_11"] = "Sway",
    ["KBA_Emote_12"] = "Facepalm",
    ["KBA_Emote_13"] = "bentdouble",
    ["KBA_Emote_14"] = "WashFace",
    ["KBA_Emote_15"] = "WashHands",
    ["KBA_Emote_16"] = "PassoutBack",    
}

local KBA_EmotesBindedThirdModifier = {
    ["KBA_Emote_1"] = "PassoutFront",
    ["KBA_Emote_2"] = "Fall",
    ["KBA_Emote_3"] = "Man1",
    ["KBA_Emote_4"] = "Man2",
    ["KBA_Emote_5"] = "Man3",
    ["KBA_Emote_6"] = "Man4",
    ["KBA_Emote_7"] = "Man5",
    ["KBA_Emote_8"] = "Man6",
    ["KBA_Emote_9"] = "saluteformal",
    ["KBA_Emote_10"] = "salutecasual",
    ["KBA_Emote_11"] = "Yawn",
    ["KBA_Emote_12"] = "TStretch",
    ["KBA_Emote_13"] = "AwakeToAlsleep",
    ["KBA_Emote_14"] = "DragDown",
    ["KBA_Emote_15"] = "Limp",
    ["KBA_Emote_16"] = "LimpAssist",

}


local KBA_EmotesBindedFirstSecondModifier = {
    ["KBA_Emote_1"] = "Walk002",
    ["KBA_Emote_2"] = "Walk003",
    ["KBA_Emote_3"] = "Walk005",
    ["KBA_Emote_4"] = "Z_Eat1",
    ["KBA_Emote_5"] = "Z_Eat2",
    ["KBA_Emote_6"] = "Z_LayIdle1",
    ["KBA_Emote_7"] = "Z_LayIdle2",
    ["KBA_Emote_8"] = "Z_Lunge1",
    ["KBA_Emote_9"] = "Z_Lunge2",
    ["KBA_Emote_10"] = "Z_Lunge3",
    ["KBA_Emote_11"] = "Skeleton",
    ["KBA_Emote_12"] = "Scarecrow",
    ["KBA_Emote_13"] = "wavehi",
    ["KBA_Emote_14"] = "wavehi02",
    ["KBA_Emote_15"] = "wavebye",
    ["KBA_Emote_16"] = "clap",
}

local KBA_EmotesBindedFirstThirdModifier = {
    ["KBA_Emote_1"] = "clap02",
    ["KBA_Emote_2"] = "thumbsup",
    ["KBA_Emote_3"] = "thankyou",
    ["KBA_Emote_4"] = "insult",
    ["KBA_Emote_5"] = "stop",
    ["KBA_Emote_6"] = "stop02",
    ["KBA_Emote_7"] = "surrender",
    ["KBA_Emote_8"] = "thumbsdown",
    ["KBA_Emote_9"] = "followme",
    ["KBA_Emote_10"] = "comehere",
    ["KBA_Emote_11"] = "comehere02",
    ["KBA_Emote_12"] = "yes",
    ["KBA_Emote_13"] = "no",
    ["KBA_Emote_14"] = "shrug",
    ["KBA_Emote_15"] = "undecided",
    ["KBA_Emote_16"] = "ceasefire",

}

local KBA_EmotesBindedSecondThirdModifier = {
    ["KBA_Emote_1"] = "signalok",
    ["KBA_Emote_2"] = "moveout",
    ["KBA_Emote_3"] = "freeze",
    ["KBA_Emote_4"] = "followbehind",
    ["KBA_Emote_5"] = "signalfire",
    ["KBA_Emote_6"] = "comefront",
    ["KBA_Emote_7"] = "saluteformal",
    ["KBA_Emote_8"] = "salutecasual",
    
}

local function ManageKeys(key)
    local player = getPlayer()
    -- if key == 1 then
    --     -- Workaround to prevent problems
    --     -- FIXME: not working!
    --     player:setBlockMovement(false)
    -- end

    for _,bind in ipairs(KBA_Bindings) do
        if key == getCore():getKey(bind.value) then


            if bind.value == "KBA_Exit" then
                print("Trying to stop animation")
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
                player:setBlockMovement(false)

                return
            end

            if bind.value == "KBA_Modifier_1" or bind.value == "KBA_Modifier_2" or bind.value == "KBA_Modifier_3" then
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
                local player = getPlayer()
                local chosenEmote = chosenBinds[emoteIndex]
                player:setVariable("EmotePlaying", true)
                player:playEmote(chosenEmote)
                print("KBA: playing emote from keybinds => " .. chosenEmote)
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