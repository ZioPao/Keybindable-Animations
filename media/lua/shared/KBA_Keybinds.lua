-- TODO add a keybind to stop animation!
-- TODO Add french stuff translation





KBA_Bindings = {
    {
        name = '[StreamingAnimations]'
    },
    {
        value = 'KBA_Modifier_1',
        key = Keyboard.KEY_RCONTROL,

    },

    {
        value = 'KBA_Modifier_2',
        key = Keyboard.KEY_RSHIFT,

    },

    
    {
        value = 'KBA_Modifier_3',
        key = Keyboard.KEY_INSERT,

    },


    {
        value = 'KBA_Exit',
        key = Keyboard.KEY_DELETE,
    },
    
    {
        value = 'KBA_Emote_1',
        key = Keyboard.KEY_NUMPAD1,
    },
    {
        value = 'KBA_Emote_2',
        key = Keyboard.KEY_NUMPAD2,
    },
    {
        value = 'KBA_Emote_3',
        key = Keyboard.KEY_NUMPAD3,
    },
    {
        value = 'KBA_Emote_4',
        key = Keyboard.KEY_NUMPAD4,
    },
    {
        value = 'KBA_Emote_5',
        key = Keyboard.KEY_NUMPAD5,
    },
    {
        value = 'KBA_Emote_6',
        key = Keyboard.KEY_NUMPAD6,
    },
    {
        value = 'KBA_Emote_7',
        key = Keyboard.KEY_NUMPAD7,
    },
    {
        value = 'KBA_Emote_8',
        key = Keyboard.KEY_NUMPAD8,
    },
    {
        value = 'KBA_Emote_9',
        key = Keyboard.KEY_NUMPAD9,
    },
    {
        value = 'KBA_Emote_10',
        key = Keyboard.KEY_NUMPAD0,
    },
    {
        value = 'KBA_Emote_11',
        key = Keyboard.KEY_NUMPADCOMMA,
    },
    {
        value = 'KBA_Emote_12',
        key = Keyboard.KEY_DIVIDE,
    },
    {
        value = 'KBA_Emote_13',
        key = Keyboard.KEY_MULTIPLY,
    },
    {
        value = 'KBA_Emote_14',
        key = Keyboard.KEY_MINUS,
    },
    {
        value = 'KBA_Emote_15',
        key = Keyboard.KEY_ADD,
    },
    {
        value = 'KBA_Emote_16',
        key = Keyboard.KEY_NUMPADENTER,
    },
    
    
    

}



local function InitKeybinds()

    if isServer() then return end

    
    for _, bind in ipairs(KBA_Bindings) do
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