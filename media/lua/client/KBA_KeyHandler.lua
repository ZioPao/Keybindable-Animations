KBA_KeyHandler = {}
KBA_KeyHandler.isFirstModifier = false
KBA_KeyHandler.isSecondModifier = false
KBA_KeyHandler.isThirdModifier = false

local KBA_EmotesBindedNoModifier = {
    ["KBA_Emote_1"] = "Asleep",
    ["KBA_Emote_2"] = "Awake",
    ["KBA_Emote_3"] = "AwakeToAsleep",
    ["KBA_Emote_4"] = "Sit1",
    ["KBA_Emote_5"] = "bentdouble",
    ["KBA_Emote_6"] = "DragDown",
    ["KBA_Emote_7"] = "Fall",
    ["KBA_Emote_8"] = "FeelFaint",
    ["KBA_Emote_9"] = "PassoutBack",
    ["KBA_Emote_10"] = "PassoutFront",
    ["KBA_Emote_11"] = "VomitStart",
    ["KBA_Emote_12"] = "VomitLoop",
    ["KBA_Emote_13"] = "Spooked1",
    ["KBA_Emote_14"] = "Spooked2",
    ["KBA_Emote_15"] = "Shiver",
    ["KBA_Emote_16"] = "TStretch",
}

local KBA_EmotesBindedFirstModifier = {
    ["KBA_Emote_1"] = "Yawn",
    ["KBA_Emote_2"] = "Cough",
    ["KBA_Emote_3"] = "Z_Eat1",
    ["KBA_Emote_4"] = "Z_Eat2",
    ["KBA_Emote_5"] = "Z_LayIdle1",
    ["KBA_Emote_6"] = "Z_LayIdle2",
    ["KBA_Emote_7"] = "Z_Lunge1ZombieInteractive",
    ["KBA_Emote_8"] = "PainHead1",
    ["KBA_Emote_9"] = "PainStomach1",
    ["KBA_Emote_10"] = "PainStomach2",
    ["KBA_Emote_11"] = "PainArmR",
    ["KBA_Emote_12"] = "PainHandR",
    ["KBA_Emote_13"] = "PainTorso",
    ["KBA_Emote_14"] = "PainLegL",
    ["KBA_Emote_15"] = "PainHandL",
    ["KBA_Emote_16"] = "PainArmL",
}

local KBA_EmotesBindedSecondModifier = {
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
    ["KBA_Emote_15"] = "CrawlInteractive",
    ["KBA_Emote_16"] = "ScrambleBackInteractive",
}

local KBA_EmotesBindedThirdModifier = {
    ["KBA_Emote_1"] = "LimpInteractive",
    ["KBA_Emote_2"] = "ScrambleInteractive",
    ["KBA_Emote_3"] = "Man1",
    ["KBA_Emote_4"] = "Man2",
    ["KBA_Emote_5"] = "Man3",
    ["KBA_Emote_6"] = "Man4",
    ["KBA_Emote_7"] = "Man5",
    ["KBA_Emote_8"] = "Man6",
    ["KBA_Emote_9"] = "Facepalm",
    ["KBA_Emote_10"] = "Sway",
    ["KBA_Emote_11"] = "SmellBad",
    ["KBA_Emote_12"] = "SmellGag",
    ["KBA_Emote_13"] = "ChewNails",
    ["KBA_Emote_14"] = "ShiftWeight",
    ["KBA_Emote_15"] = "Burp",
    ["KBA_Emote_16"] = "DrinkFloor",

}


local KBA_EmotesBindedFirstSecondModifier = {
    ["KBA_Emote_1"] = "WashFace",
    ["KBA_Emote_2"] = "WashHands",
    ["KBA_Emote_3"] = "DuffelbagOn",
    ["KBA_Emote_4"] = "DuffelbagLoot",
    ["KBA_Emote_5"] = "DuffelbagOff",
    ["KBA_Emote_6"] = "Skeleton",
    ["KBA_Emote_7"] = "Scarecrow",
    ["KBA_Emote_8"] = "wavehi",
    ["KBA_Emote_9"] = "wavehi02",
    ["KBA_Emote_10"] = "wavebye",
    ["KBA_Emote_11"] = "clap",
    ["KBA_Emote_12"] = "clap02",
    ["KBA_Emote_13"] = "thumbsup",
    ["KBA_Emote_14"] = "thankyou",
    ["KBA_Emote_15"] = "insult",
    ["KBA_Emote_16"] = "stop",
}

local KBA_EmotesBindedFirstThirdModifier = {
    ["KBA_Emote_1"] = "stop02",
    ["KBA_Emote_2"] = "surrender",
    ["KBA_Emote_3"] = "thumbsdown",
    ["KBA_Emote_4"] = "followme",
    ["KBA_Emote_5"] = "comehere",
    ["KBA_Emote_6"] = "comehere02",
    ["KBA_Emote_7"] = "yes",
    ["KBA_Emote_8"] = "no",
    ["KBA_Emote_9"] = "shrug",
    ["KBA_Emote_10"] = "undecided",
    ["KBA_Emote_11"] = "ceasefire",
    ["KBA_Emote_12"] = "signalok",
    ["KBA_Emote_13"] = "moveout",
    ["KBA_Emote_14"] = "freeze",
    ["KBA_Emote_15"] = "followbehind",
    ["KBA_Emote_16"] = "signalfire",

}

local KBA_EmotesBindedSecondThirdModifier = {
    ["KBA_Emote_1"] = "comefront",
    ["KBA_Emote_2"] = "saluteformal",
    ["KBA_Emote_3"] = "salutecasual",
    
    
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
                KBA_Handler.StopAnimation(player)
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


Events.OnGameStart.Add(function()

    Events.OnKeyPressed.Add(ManageKeys)
    Events.OnKeyKeepPressed.Add(ManageModifier)
    Events.OnCustomUIKeyReleased.Add(DisableModifier)
end)

