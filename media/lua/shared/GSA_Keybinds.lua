-- TODO add a keybind to stop animation!
-- TODO Add french stuff translation





GSA_Bindings = {
    {
        name = '[StreamingAnimations]'
    },
    {
        value = 'GSA_Modifier_1',
        key = Keyboard.KEY_RCONTROL,

    },

    {
        value = 'GSA_Modifier_2',
        key = Keyboard.KEY_RSHIFT,

    },

    
    {
        value = 'GSA_Modifier_3',
        key = Keyboard.KEY_INSERT,

    },


    {
        value = 'GSA_Exit',
        key = Keyboard.KEY_DELETE,
    },
    
    {
        value = 'GSA_Emote_1',
        key = Keyboard.KEY_NUMPAD1,
    },
    {
        value = 'GSA_Emote_2',
        key = Keyboard.KEY_NUMPAD2,
    },
    {
        value = 'GSA_Emote_3',
        key = Keyboard.KEY_NUMPAD3,
    },
    {
        value = 'GSA_Emote_4',
        key = Keyboard.KEY_NUMPAD4,
    },
    {
        value = 'GSA_Emote_5',
        key = Keyboard.KEY_NUMPAD5,
    },
    {
        value = 'GSA_Emote_6',
        key = Keyboard.KEY_NUMPAD6,
    },
    {
        value = 'GSA_Emote_7',
        key = Keyboard.KEY_NUMPAD7,
    },
    {
        value = 'GSA_Emote_8',
        key = Keyboard.KEY_NUMPAD8,
    },
    {
        value = 'GSA_Emote_9',
        key = Keyboard.KEY_NUMPAD9,
    },
    {
        value = 'GSA_Emote_10',
        key = Keyboard.KEY_NUMPAD0,
    },
    {
        value = 'GSA_Emote_11',
        key = Keyboard.KEY_NUMPADCOMMA,
    },
    {
        value = 'GSA_Emote_12',
        key = Keyboard.KEY_DIVIDE,
    },
    {
        value = 'GSA_Emote_13',
        key = Keyboard.KEY_MULTIPLY,
    },
    {
        value = 'GSA_Emote_14',
        key = Keyboard.KEY_MINUS,
    },
    {
        value = 'GSA_Emote_15',
        key = Keyboard.KEY_ADD,
    },
    {
        value = 'GSA_Emote_16',
        key = Keyboard.KEY_NUMPADENTER,
    },
    
    
    

}



local function InitKeybinds()

    if isServer() then return end

    
    for _, bind in ipairs(GSA_Bindings) do
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