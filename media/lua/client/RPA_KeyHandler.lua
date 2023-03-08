RPA_KeyHandler = {}
RPA_KeyHandler.isFirstModifier = false
RPA_KeyHandler.isSecondModifier = false

local RPA_EmotesBindedNoModifier = {
    ["RPA_Emote_1"] = "Asleep",
    ["RPA_Emote_2"] = "Awake",
    ["RPA_Emote_3"] = "Sit1",
    ["RPA_Emote_4"] = "Tired",
    ["RPA_Emote_5"] = "Scared",     -- TODO Broken?
    ["RPA_Emote_6"] = "Pose",       -- TODO Broken?
    ["RPA_Emote_7"] = "bentdouble",
    ["RPA_Emote_8"] = "Facepalm",
    ["RPA_Emote_9"] = "FeelFaint",
    ["RPA_Emote_10"] = "Sway",
    ["RPA_Emote_11"] = "SmellGroup",
    ["RPA_Emote_12"] = "ChewNails",
    ["RPA_Emote_13"] = "ShiftWeight",
    ["RPA_Emote_14"] = "Burp",
    ["RPA_Emote_15"] = "DrinkFloor",
    ["RPA_Emote_16"] = "WashFace",
}

local RPA_EmotesBindedFirstModifier = {
    ["RPA_Emote_1"] = "WashHands",
    ["RPA_Emote_2"] = "VomitStart",
    ["RPA_Emote_3"] = "BurpeesGroup",
    ["RPA_Emote_4"] = "BicepCurlGroup",
    ["RPA_Emote_5"] = "PushupGroup",     -- TODO Broken?
    ["RPA_Emote_6"] = "SitupGroup",       -- TODO Broken?
    ["RPA_Emote_7"] = "SquatGroup",
    ["RPA_Emote_8"] = "PainHeadGroup",
    ["RPA_Emote_9"] = "Cough",
    ["RPA_Emote_10"] = "PainArmL",
    ["RPA_Emote_11"] = "PainHandL",
    ["RPA_Emote_12"] = "PainLegL",
    ["RPA_Emote_13"] = "PainStomachGroup",
    ["RPA_Emote_14"] = "PainTorso",
    ["RPA_Emote_15"] = "PainLegR",
    ["RPA_Emote_16"] = "PainHandR",
}

local RPA_EmotesBindedSecondModifier = {
    ["RPA_Emote_1"] = "PainArmR",
    ["RPA_Emote_2"] = "AwakeToAsleep",
    ["RPA_Emote_3"] = "Passout",
    ["RPA_Emote_4"] = "DragDown",
    ["RPA_Emote_5"] = "Duffelbag", 
    ["RPA_Emote_6"] = "Limp",       
    ["RPA_Emote_7"] = "LimpAssist",
    ["RPA_Emote_8"] = "Bed",
    ["RPA_Emote_9"] = "Walk",
    ["RPA_Emote_10"] = "Z_Eat",
    ["RPA_Emote_11"] = "Z_Lunge",
    ["RPA_Emote_12"] = "Z_LayIdle",
    ["RPA_Emote_13"] = "ScrambleFloorBack",
    ["RPA_Emote_14"] = "ScrambleFloorIdle",
    ["RPA_Emote_15"] = "ScrambleFloor",
    ["RPA_Emote_16"] = "WashFace",      -- TODO we need another anim to fill this
}



local function ManageKeys(key)


    for _,bind in ipairs(RPA_Bindings) do
        if key == getCore():getKey(bind.value) then
            if bind.value == "RPA_Modifier_1" or bind.value == "RPA_Modifier_2" then
                return
            end

            local emoteIndex = bind.value
            local chosenBinds


            print("Normal key check")

            if RPA_KeyHandler.isFirstModifier then
                chosenBinds = RPA_EmotesBindedFirstModifier
                print("First modifier")
            elseif RPA_KeyHandler.isSecondModifier then
                chosenBinds = RPA_EmotesBindedSecondModifier
                print("Second modifier")
            else
                chosenBinds = RPA_EmotesBindedNoModifier
                print("No modifier")

            end

            local emote = chosenBinds[emoteIndex]
            print(emote)

            if emote == nil then
                return
                print("Unvalid emote")
            end

            if not RPA_Handler.CheckEmote(chosenBinds[emoteIndex]) then
                getPlayer():playEmote(chosenBinds[emoteIndex])
            end

            break
        end
    end




end


local function CheckModifierKey(key, modifierEnum)

    local chosenModifierBind

    if modifierEnum == 1 then
        chosenModifierBind = RPA_Bindings[2]
    elseif modifierEnum == 2 then
        chosenModifierBind = RPA_Bindings[3]
    end

    if key == getCore():getKey(chosenModifierBind.value) then
        return true
    end

    return false
end


local function ManageModifier(key)

    if CheckModifierKey(key, 1) then    -- RCTRL
        RPA_KeyHandler.isFirstModifier = true
    elseif CheckModifierKey(key, 2) then    -- RALT
        RPA_KeyHandler.isSecondModifier = true
    end
   
end

local function DisableModifier(key)
    if CheckModifierKey(key, 1) then    -- RCTRL
        RPA_KeyHandler.isFirstModifier = false
    elseif CheckModifierKey(key, 2) then    -- RALT
        RPA_KeyHandler.isSecondModifier = false
    end
end

Events.OnKeyPressed.Add(ManageKeys)
Events.OnKeyKeepPressed.Add(ManageModifier)
Events.OnCustomUIKeyReleased.Add(DisableModifier)