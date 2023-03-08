-- TODO add a keybind to stop animation!
-- TODO Add french stuff translation





RPA_Bindings = {
    {
        name = '[StreamingAnimations]'
    },
    {
        value = 'RPA_Modifier_1',
        key = Keyboard.KEY_RCONTROL,

    },

    {
        value = 'RPA_Modifier_2',
        key = Keyboard.KEY_RSHIFT,

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