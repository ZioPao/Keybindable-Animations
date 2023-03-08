-- TODO add a keybind to stop animation!
-- TODO Add french stuff translation



RPA_EmotesBindedNoModifier = {
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

RPA_EmotesBindedFirstModifier = {
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

RPA_EmotesBindedSecondModifier = {
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




RPA_Bindings = {
    {
        name = '[Roleplay Animations]'
    },
    {
        value = 'RPA_Modifier_1',
        key = Keyboard.KEY_RCONTROL,

    },

    {
        value = 'RPA_Modifier_2',
        key = Keyboard.KEY_RALT,

    },

    {
        value = 'RPA_Emote_1',
        key = Keyboard.KEY_NUMPAD1,
    },
    {
        value = 'RPA_Emote_2',
        key = Keyboard.KEY_NUMPAD2,
    },
    {
        value = 'RPA_Emote_3',
        key = Keyboard.KEY_NUMPAD3,
    },
    {
        value = 'RPA_Emote_4',
        key = Keyboard.KEY_NUMPAD4,
    },
    {
        value = 'RPA_Emote_5',
        key = Keyboard.KEY_NUMPAD5,
    },
    {
        value = 'RPA_Emote_6',
        key = Keyboard.KEY_NUMPAD6,
    },
    {
        value = 'RPA_Emote_7',
        key = Keyboard.KEY_NUMPAD7,
    },
    {
        value = 'RPA_Emote_8',
        key = Keyboard.KEY_NUMPAD8,
    },
    {
        value = 'RPA_Emote_9',
        key = Keyboard.KEY_NUMPAD9,
    },
    {
        value = 'RPA_Emote_10',
        key = Keyboard.KEY_NUMPAD0,
    },
    {
        value = 'RPA_Emote_11',
        key = Keyboard.KEY_NUMPADCOMMA,
    },
    {
        value = 'RPA_Emote_12',
        key = Keyboard.KEY_DIVIDE,
    },
    {
        value = 'RPA_Emote_13',
        key = Keyboard.KEY_MULTIPLY,
    },
    {
        value = 'RPA_Emote_14',
        key = Keyboard.KEY_MINUS,
    },
    {
        value = 'RPA_Emote_15',
        key = Keyboard.KEY_ADD,
    },
    {
        value = 'RPA_Emote_16',
        key = Keyboard.KEY_NUMPADENTER,
    },
    
    
    

}



local function InitKeybinds()

    if isServer() then return end

    
    for _, bind in ipairs(RPA_Bindings) do
        if bind.name then
            table.insert(keyBinding, { value = bind.name, key = nil })
        else
            if bind.key then
                table.insert(keyBinding, { value = bind.value, key = bind.key })
            end
        end
    end

    
end



InitKeybinds()