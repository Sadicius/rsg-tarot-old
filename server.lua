local RSGCore = exports['rsg-core']:GetCoreObject()

local basicCards = {"card_bulbasaur", "card_ivysaur", "card_charmander", "card_charmeleon", "card_squirtle", 
"card_wartortle", "card_caterpie", "card_metapod", "card_butterfree", "card_weedle",
 "card_kakuna", "card_eedrill", "card_pidgey","card_pidgeotto", "card_pidgeot", 
"card_rattata", "card_raticate", "card_spearow", "card_fearow", "card_ekans", 
"card_arbok", "card_pikachu", "card_sandshrew", "card_sandslash", "card_nidoran", 
"card_nidorina", "card_nidoqueen", "card_nidorino", "card_clefairy","card_clefable", 
"card_vulpix",  "card_ninetails", "card_zubat", "card_golbat", "card_oddish", 
"card_gloom", "card_vileplume", "card_paras", "card_parasect",  "card_venonat", 
"card_venomoth", "card_diglett", "card_dugtrio", "card_meowth", "card_persian", 
"card_psyduck","card_golduck",  "card_mankey", "card_primeape", "card_growlithe", 
"card_arcanine", "card_poliwag", "card_poliwhirl", "card_poliwrath",   "card_abra",
"card_machop", "card_machoke", "card_bellsprout", "card_weepinbell", "card_victreebel", 
"card_tentacool",  "card_tentacruel", "card_geodude", "card_graveler", "card_golem", 
"card_ponyta", "card_rapidash", "card_slowpoke",   "card_slowbro", "card_magnemite",
 "card_magneton", "card_farfetchd", "card_doduo", "card_dodrio", "card_seel",
   "card_dewgong", "card_grimer", "card_muk", "card_shellder", "card_cloyster",
   "card_gastly", "card_haunter", "card_gengar",    "card_drowzee", "card_hypno", 
   "card_krabby", "card_kingler", "card_voltorb", "card_electrode", "card_exeggcute",
     "card_exeggutor", "card_cubone", "card_marowak", "card_lickitung", "card_koffing",
      "card_weezing", "card_rhyhorn",      "card_rhydon", "card_chansey", "card_tangela", 
      "card_horsea", "card_seadra", "card_goldeen", "card_seaking",       "card_staryu", 
      "card_mrmime",  "card_electabuzz", "card_magmar", "card_pinsir", "card_tauros", 
      "card_magikarp"}
-- cambiadas --
local rareCards = {"card_lapras", "card_eevee", "card_togepi", "card_vaporeon", "card_jolteon", "card_flareon", "card_jigglypuff","card_wigglytuff", "card_kadabra","card_raichu", "card_nidoking",  "card_jynx", "card_kangaskhan", "card_gyarados", "card_ditto", "card_vstarmie", "card_onix", "card_machamp", "card_vscyther", "card_hitmonlee", "card_hitmonchan", "card_venusaur" }
local ultraCards = {"card_charizard", "card_blastoise","card_porygon", "card_omanyte", "card_omastar", "card_dragonite", "card_mewtwo", "card_mew", "card_snorlax", "card_articuno", "card_zapdos", "card_kabuto", "card_kabutops", "card_aerodactyl", "card_moltres", "card_dratini", "card_dragonair"}
local vCards = {"card_blastoisev", "card_charizardv", "card_mewv", "card_pikachuv", "card_snorlaxv", "card_venusaurv"}
local vmaxCards = {"card_blastoisevmax", "card_mewtwogx", "card_snorlaxvmax", "card_venusaurvmax", "card_vmaxcharizard", "card_vmaxpikachu"}
local rainbowCards = {"card_rainbowmewtwogx", "card_rainbowvmaxcharizard", "card_rainbowvmaxpikachu", "card_snorlaxvmaxrainbow"}

RSGCore.Functions.CreateUseableItem("card_boosterbox", function(source, item)
    local Player = RSGCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot, item.info) then
        TriggerClientEvent("Cards2:Client:OpenCards", source, item.name)
			local xPlayer = RSGCore.Functions.GetPlayer(source)
				xPlayer.Functions.AddItem('card_boosterpack',4)
           Wait(4000)
        TriggerClientEvent('RSGCore:Notify', source, 'You got 4 booster packs!')
            Wait(1000)
    end
end)

RSGCore.Functions.CreateCallback("Cards2:server:Menu",function(source,cb)
    local player = RSGCore.Functions.GetPlayer(source)
    local item = "...."
        if player ~= nil then
            if player.Functions.GetItemByName(item) then
            cb(item,item.amount)
        end
    end
end)

RSGCore.Functions.CreateUseableItem("card_boosterpack", function(source, item)
    local Player = RSGCore.Functions.GetPlayer(source)  
        TriggerClientEvent("Cards2:Client:OpenPack", source)  
        Wait(4000)
        TriggerClientEvent('RSGCore:Notify', source, 'You got 4 cards!')
end)

RegisterServerEvent('Cards2:Server:RemoveItem')
AddEventHandler('Cards2:Server:RemoveItem', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(source)
    local pack = Player.Functions.GetItemByName("card_boosterpack")

    if pack.amount == nil then
        TriggerClientEvent('RSGCore:Notify', source, 'You dont have a boosterpack!')
    else
        Player.Functions.RemoveItem('card_boosterpack',1)
    end
  
end)

CreateThread(function()
    math.randomseed(os.time())
end)

RegisterServerEvent('Cards2:Server:rewarditem')
AddEventHandler('Cards2:Server:rewarditem', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(source)
    local pack = Player.Functions.GetItemByName("card_boosterpack")
    local card = ''

    local randomChance = math.random(1, 1000)
   -- print(randomChance) -- if you wanna see the random chance
    if randomChance <= 5 then 
        card = rainbowCards[math.random(1,#rainbowCards)]         
	elseif randomChance >= 6 and randomChance <= 19 then
        card = vmaxCards[math.random(1, #vmaxCards)]

	elseif randomChance >= 20 and randomChance <= 50 then
        card = vCards[math.random(1, #vCards)]

	elseif randomChance >= 51 and randomChance <= 100 then
        card = ultraCards[math.random(1, #ultraCards)]

    elseif randomChance >= 101 and randomChance <= 399 then
        card = rareCards[math.random(1, #rareCards)]
    else 
        card = basicCards[math.random(1, #basicCards)]
	end

    Wait(10)
    --print(card)

    if card ~= '' then        
        TriggerClientEvent('Cards2:Client:CardChoosed', src, card)
    else
        TriggerClientEvent('RSGCore:Notify', source, 'There is a problem in cards!')
    end 
end)

RegisterServerEvent('Cards2:Server:GetPokemon')
AddEventHandler('Cards2:Server:GetPokemon', function(pokemon)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local pokemonName = RSGCore.Shared.Items[pokemon].label
    if pokemon ~= nil then
        TriggerClientEvent("inventory:client:ItemBox", RSGCore.Shared.Items[pokemon], "add")
        TriggerClientEvent('RSGCore:Notify', source, "You got "..pokemonName.. "")
        Player.Functions.AddItem(pokemon, 1)
    end  
end)

RegisterServerEvent("Cards2:server:badges")
AddEventHandler("Cards2:server:badges", function(type)
        local total = 0
        local canBadge = true
        local Player = RSGCore.Functions.GetPlayer(source)
            for k, v in pairs(Config.Badge[type].cards) do 
                if Player.Functions.GetItemByName(k) ~= nil then 
                    if Player.Functions.GetItemByName(k).amount < v then 
                       canBadge = false
                      TriggerClientEvent('RSGCore:Notify', source, 'Come back when you have all the items for the '..Config.Badge[type].label, 'error', 5000) 
                    end
                else 
                    canBadge = false
                    TriggerClientEvent('RSGCore:Notify', source, 'Come back when you have all the items for the '..Config.Badge[type].label, 'error', 5000)
                    break                          
                end
            end
                if canBadge then 
                    TriggerClientEvent('RSGCore:Notify', source, 'You got a '..Config.Badge[type].label..'!', 'success', 10000)
                    for k, v in pairs(Config.Badge[type].cards) do
                    Player.Functions.RemoveItem(k, v)

                    end 
                   Wait(2000)
                    Player.Functions.AddItem(type, 1)
                end 
end)

RSGCore.Functions.CreateUseableItem("card_pokebox", function(source, item)
    local Player = RSGCore.Functions.GetPlayer(source)
    TriggerClientEvent("Cards2:client:UseBox", source)
    TriggerEvent("rsg-log:server:CreateLog", "card_pokebox", "Tarot Box", "white", "Player Opened The Box **"..GetPlayerName(source).."** Citizen ID : **"..Player.PlayerData.citizenid.. "**", false)
end)

function CanItemBeSaled(item)
    local retval = false
    if Config.AllowedItems[item] ~= nil then
        retval = true
    end
    return retval
end

RegisterServerEvent("Cards2:sellItem")
AddEventHandler("Cards2:sellItem", function(itemName, amount, price)
	local xPlayer = RSGCore.Functions.GetPlayer(source)
    
    if xPlayer.Functions.RemoveItem(itemName, amount) then
        xPlayer.Functions.AddItem('cash', price, 'Card-sell')
        TriggerClientEvent("RSGCore:Notify", source, "You sold " .. amount .. " " .. itemName .. " for $" .. price, "success", 5000)
    end
end)

RSGCore.Functions.CreateCallback('Cards2:server:get:drugs:items', function(source, cb)
    local src = source
    local AvailableDrugs = {}
    local Player = RSGCore.Functions.GetPlayer(src)
    for k, v in pairs(Config.CardshopItems) do
        local DrugsData = Player.Functions.GetItemByName(k)
        if DrugsData ~= nil then
            table.insert(AvailableDrugs, {['Item'] = DrugsData.name, ['Amount'] = DrugsData.amount})
        end
    end
    cb(AvailableDrugs)
end)

function tprint (t, s)
    for k, v in pairs(t) do
        local kfmt = '["' .. tostring(k) ..'"]'
        if type(k) ~= 'string' then
            kfmt = '[' .. k .. ']'
        end
        local vfmt = '"'.. tostring(v) ..'"'
        if type(v) == 'table' then
            tprint(v, (s or '')..kfmt)
        else
            if type(v) ~= 'string' then
                vfmt = tostring(v)
            end
            print(type(t)..(s or '')..kfmt..' = '..vfmt)
        end
    end
end 
