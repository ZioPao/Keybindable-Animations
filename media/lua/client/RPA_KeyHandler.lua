RPA_KeyHandler = {}
RPA_KeyHandler.isFirstModifier = false
RPA_KeyHandler.isSecondModifier = false


local function ManageKeys(key)


    for _,bind in ipairs(RPA_Bindings) do
        if key == getCore():getKey(bind.value) then
            if bind.isModifier then
                return
            end

            local emoteIndex = bind.value
            local chosenBinds


            print("Normal key check")

            if RPA_KeyHandler.isFirstModifier then
                chosenBinds = RPA_EmotesBindedFirstModifier
                print("Modifier active, shift action to another one")
            elseif RPA_KeyHandler.isSecondModifier then
                chosenBinds = RPA_EmotesBindedSecondModifier
            else
                chosenBinds = RPA_EmotesBindedNoModifier

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