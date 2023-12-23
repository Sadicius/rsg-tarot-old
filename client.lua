local RSGCore = exports['rsg-core']:GetCoreObject()
local assert = assert
local MenuV = assert(MenuV)
local tarotvendor
local tarottrader
local name = nil

CreateThread(function()
    for _, v in pairs(Config.Badge) do           
        local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.location)
        SetBlipSprite(blip, GetHashKey(Config.Blip.blipSprite), true)
        SetBlipScale(blip, Config.Blip.blipScale)
        Citizen.InvokeNative(0x9CB1A1623062F402, blip, Config.Blip.blipName)

    end

    for _, v in pairs(Config.CardshopLocation) do
        local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.location)
        SetBlipSprite(blip, GetHashKey(Config.Blip.blipSprite), true)
        SetBlipScale(blip, Config.Blip.blipScale)
        Citizen.InvokeNative(0x9CB1A1623062F402, blip, Config.Blip.blipName)

    end
end)

-- text for trigger
local function DrawText3Ds(x, y, z, text)
    local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
    SetTextScale(0.35, 0.35)
    SetTextFontForCurrentCommand(9)
    SetTextColor(255, 255, 255, 215)
    local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
    SetTextCentre(1)
    DisplayText(str,_x,_y)
end
------------------------------------------------------------------
CreateThread(function()
    while true do
        Wait(1)
        local sleep = true
        local playerCoords = GetEntityCoords(PlayerPedId())
        -- Verificar las ubicaciones de las tiendas de cartas de tarot de Config.CardshopLocation
        for _, v in pairs(Config.CardshopLocation) do
            if not v.showTarget then
                local loc = v.location
                local distance = #(playerCoords - loc)
                if distance < 2.5 then
                    sleep = false
    
                    DrawText3Ds(loc.x, loc.y, loc.z + 1.0, 'Comprador de cartas [J]')
    
                    if IsControlJustPressed(1, RSGCore.Shared.Keybinds['J']) then
                        TriggerEvent('Cards2:client:openMenu')
                    end
                end 
            else
                exports['rsg-target']:AddCircleZone(v.name, v.location, 2, {
                    name = v.name,
                    debugPoly = false,
                }, {
                    options = {
                        {
                            type = "client",
                            action = function()
                                TriggerEvent('Cards2:client:openMenu')
                            end,
                            icon = "fas fa-comments-dollar",
                            label = 'Comprador de cartas',
                        },
                    },
                    distance = 3,
                })
            end
        end
        -- Verificar las ubicaciones de los NPCs de Config.Badge
        for k, v in pairs(Config.Badge) do
            if not v.showTarget then
                local loc = v.location
                local distance = #(playerCoords - loc)
                if distance < 2.5 then
                    sleep = false
                    DrawText3Ds(loc.x, loc.y, loc.z + 1.0, 'Para cambiar por '..v.label.. ' [E]')
                    if IsControlJustPressed(1, RSGCore.Shared.Keybinds['E']) then
                        TriggerServerEvent('Cards2:server:badges', k)
                    end 
                end
            else
                 exports['rsg-target']:AddCircleZone(v.name, v.location, 2, {
                    name = v.name,
                    debugPoly = false,
                }, {
                    options = {
                        {
                            type = "client",
                            action = function()
                                TriggerServerEvent('Cards2:server:badges', k)
                            end,
                            icon = "fas fa-box",
                            label = 'Para cambiar por '..v.label,
                        },
                    },
                    distance = 3,
                })
            end
        end

        if sleep then
            Wait(1000)
        end
    end
end)

local spawnedPeds = {}

function NearPed(model, coords2)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(50)
    end
    spawnedPed = CreatePed(model, coords2.x, coords2.y, coords2.z - 1.0, coords2.w, false, false, 0, 0)
    SetEntityAlpha(spawnedPed, 0, false)
    Citizen.InvokeNative(0x283978A15512B2FE, spawnedPed, true)
    SetEntityCanBeDamaged(spawnedPed, false)
    SetEntityInvincible(spawnedPed, true)
    FreezeEntityPosition(spawnedPed, true)
    SetBlockingOfNonTemporaryEvents(spawnedPed, true)
    -- set relationship group between npc and player
    Citizen.InvokeNative(0xC80A74AC829DDD92, spawnedPed, GetPedRelationshipGroupHash(spawnedPed)) -- SetPedRelationshipGroupHash
    Citizen.InvokeNative(0xBF25EB89375A37AD, 1, GetPedRelationshipGroupHash(spawnedPed), `PLAYER`) -- SetRelationshipBetweenGroups
    if Config.Debug then
        local relationship = Citizen.InvokeNative(0x9E6B70061662AE5C, GetPedRelationshipGroupHash(spawnedPed), `PLAYER`) -- GetRelationshipBetweenGroups
        print(relationship)
    end
    -- end of relationship group
    if Config.FadeIn then
        for i = 0, 255, 51 do
            Wait(50)
            SetEntityAlpha(spawnedPed, i, false)
        end
    end
    return spawnedPed
end

CreateThread(function()
    while true do
        Wait(500)
        for k,v in pairs(Config.PedList) do
            local playerCoords = GetEntityCoords(PlayerPedId())
            local distance = #(playerCoords - v.coords2.xyz)

            if distance < Config.DistanceSpawn and not spawnedPeds[k] then
                local spawnedPed = NearPed(v.model, v.coords2)
                spawnedPeds[k] = { spawnedPed = spawnedPed }
            end

            if distance >= Config.DistanceSpawn and spawnedPeds[k] then
                if Config.FadeIn then
                    for i = 255, 0, -51 do
                        Wait(50)
                        SetEntityAlpha(spawnedPeds[k].spawnedPed, i, false)
                    end
                end
                DeletePed(spawnedPeds[k].spawnedPed)
                spawnedPeds[k] = nil
            end
        end
    end
end)

RegisterNetEvent("Cards2:Client:OpenCards")
AddEventHandler("Cards2:Client:OpenCards", function() 
    RequestAnimDict("mech_melee@unarmed@ai@_ambient@_healthy@_streamed")
        while (not HasAnimDictLoaded("mech_melee@unarmed@ai@_ambient@_healthy@_streamed")) do
        Wait(0)
        end
        TaskPlayAnim(PlayerPedId(), "mech_melee@unarmed@ai@_ambient@_healthy@_streamed" ,"mech_melee@unarmed@ai@_ambient@_healthy@_streamed amb_fight_dodge_attack_02_vic" ,8.0, -8.0, -1, 1, 0, false, false, false )
          local PedCoords = GetEntityCoords(PlayerPedId())
          propbox = CreateObject(GetHashKey('p_moneybag01x'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
          AttachEntityToEntity(propbox, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0xDEAD), 0.1, 0.1, 0.0, 0.0, 10.0, 90.0, false, false, false, false, 2, true)
        Wait(5)
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "boxopen", 0.8)
    RSGCore.Functions.Progressbar("drink_something", "opening box..", 9500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
        Wait(1)
        DeleteEntity(propbox)
        ClearPedTasks(PlayerPedId())
    end)
end)

RegisterNetEvent("Cards2:Client:OpenPack")
AddEventHandler("Cards2:Client:OpenPack", function() 
    RequestAnimDict("mech_melee@unarmed@ai@_ambient@_healthy@_streamed")
      while (not HasAnimDictLoaded("mech_melee@unarmed@ai@_ambient@_healthy@_streamed")) do
      Wait(0)
      end
          TaskPlayAnim(PlayerPedId(), "mech_melee@unarmed@ai@_ambient@_healthy@_streamed" ,"mech_melee@unarmed@ai@_ambient@_healthy@_streamed amb_fight_dodge_attack_02_vic" ,8.0, -8.0, -1, 1, 0, false, false, false )
          local PedCoords = GetEntityCoords(PlayerPedId())
          propcards = CreateObject(GetHashKey('p_cards_cs01x'), PedCoords.x, PedCoords.y, PedCoords.z, true, true, true)
          AttachEntityToEntity(propcards, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0xDEAD), 0.1, 0.1, 0.0, 70.0, 10.0, 90.0, false, false, false, false, 2, true)
    RSGCore.Functions.Progressbar("drink_something", "opening pack..", 3000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "dealfour", 0.9) 
        Wait(500)
        SetNuiFocus(true, true)
        SendNUIMessage({
            open = true,
            class = 'open',
        })
        DeleteEntity(propcards)
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent('Cards2:Server:RemoveItem')
    end)
end)

RegisterNUICallback('Rewardpokemon', function(data)
    local pokemon = data.Pokemon    
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "flip", 0.9)
    TriggerServerEvent('Cards2:Server:GetPokemon', pokemon)
end)

RegisterNUICallback('randomCard', function()
    TriggerServerEvent('Cards2:Server:rewarditem')
end)

RegisterNUICallback('CloseNui', function()
    SetNuiFocus(false, false)
end)

RegisterNetEvent("Cards2:Client:CardChoosed")
AddEventHandler("Cards2:Client:CardChoosed", function(card)
    SendNUIMessage({
        open = true,
        class = 'choose',
        data = card,
    })
end)

RegisterNetEvent("Cards2:client:UseBox")
AddEventHandler("Cards2:client:UseBox", function()
    TaskPlayAnim(PlayerPedId(), "clothingshirt", "try_shirt_positive_d", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    print('Box is Opening')
    TaskPlayAnim(PlayerPedId(), "mech_melee@unarmed@ai@_ambient@_healthy@_streamed" ,"mech_melee@unarmed@ai@_ambient@_healthy@_streamed amb_fight_dodge_attack_02_vic" ,8.0, -8.0, -1, 1, 0, false, false, false )
    local PedCoords = GetEntityCoords(PlayerPedId())
    deckbox = CreateObject(GetHashKey('p_moneybag01x'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
    AttachEntityToEntity(deckbox, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0xDEAD), 0.1, 0.1, 0.0, 0.0, 10.0, 90.0, false, false, false, false, 2, true)
    RSGCore.Functions.Notify("Box is being opened...", "error")
    RSGCore.Functions.Progressbar("use_bag", "Box is being opened", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        local RLBagData = {
            outfitData = {
                ["card_bag"]   = { item = 175, texture = 0},  -- Nek / Das
            }
        }
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "tarot_"..RSGCore.Functions.GetPlayerData().citizenid, {maxweight = 0.1, slots = 160})
        TriggerEvent("inventory:client:SetCurrentStash", "tarot_"..RSGCore.Functions.GetPlayerData().citizenid)
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "snap", 1.2)
        TaskPlayAnim(ped, "clothingshirt", "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        RSGCore.Functions.Notify("Box has been opened successfully", "success")
        Wait(10000)
        DeleteEntity(deckbox)
        ClearPedTasks(PlayerPedId())
    end)
end)

CreateThread(function()
    while true do 
        Wait(2500)
        local PlayerData = RSGCore.Functions.GetPlayerData()
        local ShopCoords = Config.CardshopLocation['Cardshop'].location
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local dist = #(pos - ShopCoords)
        if dist < 2.5 and not PlayerData.metadata["isdead"] and not PlayerData.metadata["inlaststand"] and not PlayerData.metadata["ishandcuffed"] and not IsPauseMenuActive() then
            inshop = true
        else 
            inshop = false
        end
        if inshop == true then
            Wait(1000)
            RSGCore.Functions.TriggerCallback("Cards2:server:Menu",function(item,amount)
                print(item,amount)
            end)
        end
    end 
end)

RegisterNetEvent("rsg-tarot:client:badgesound")
AddEventHandler("rsg-tarot:client:badgesound", function()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "badge", 0.8)
end)

--------------------------------------------------------
----------------MENU---------------------------------

--Config

local menu = MenuV:CreateMenu(false, 'Player Items', 'topright', 155, 0, 0, 'size-125', 'none', 'menuv', 'test3')
local menu2 = menu:InheritMenu({title = false, subtitle = 'Card Shop', theme = 'default' })
local menu_button = menu:AddButton({ icon = '🔖', label = 'Sell Cards/Badges', value = menu2, description = 'View List Of Items' })

--------------------------------------------------------------------

RegisterNetEvent('Cards2:client:openMenu')
AddEventHandler('Cards2:client:openMenu', function()
    MenuV:OpenMenu(menu)
end)

menu_button:On('select', function(item)
    menu2:ClearItems(true)
    RSGCore.Functions.TriggerCallback('Cards2:server:get:drugs:items', function(CardsResult)
        for k, v in pairs(CardsResult) do
            local itemName = v['Item']
            local itemCount = v['Amount']
            local price = Config.CardshopItems[itemName]
            price = math.ceil(price * itemCount)

            local menu_button2 = menu2:AddButton({
                label = itemName.label .. " | Amount : " ..itemCount.." | $" .. price,
                name = itemName,
                value = {name = itemName, count = itemCount, price = price},

            select = function(btn)
                local select = btn.Value -- get all the values from v!
                TriggerServerEvent('Cards2:sellItem', select.name, select.count, select.price)
                menu2:ClearItems(false)
            end})
        end
    end)

end)
