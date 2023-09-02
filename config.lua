Config = {}

Config.DistanceSpawn = 20.0 -- Distance before spawning/despawning the ped. (GTA Units.)
Config.FadeIn = true

Config.PedList = {

	-- TIENDA / VENTA DE PIELES / TRAPEROS
    {    -- madam vendor 
		
        model = `CS_Fire_Breather`, -- armadillo
        coords2 = vector4(-3484.76, -3467.02, 0.12, 141.4),
    },
    {    -- madam vendor
    model = `CS_Fire_Breather`, -- guarma
    coords2 = vector4(2340.23, 995.64, 74.13, 293.07),
	}, 
	{    -- madam vendor 
		 model = `CS_Fire_Breather`, -- armadillo
		 coords2 = vector4(1182.39, 2035.27, 323.91, 141.4),
	 },
	 {    -- madam vendor
	 model = `CS_Fire_Breather`, -- guarma
	 coords2 = vector4(631.92, -1251.45, 41.55, 293.07),
 },
 {    -- madam vendor 
	  model = `CS_Fire_Breather`, -- armadillo
	  coords2 = vector4(-156.34, 1488.86, 116.11, 141.4),
  },
  {    -- madam vendor
  model = `CS_Fire_Breather`, -- guarma
  coords2 = vector4(-1403.78, -2330.28, 43.04, 293.07),
},
   {    -- madam vendor 
        model = `CS_Fire_Breather`, -- armadillo
        coords2 = vector4(-2812.96, -4395.96, -17.18, 141.4),
    },
    {    -- madam vendor
    model = `CS_Fire_Breather`, -- guarma
    coords2 = vector4(353.83, -17.12, 107.1, 293.07),
},
    {    -- madam vendor
    model = `CS_Fire_Breather`, -- guarma
    coords2 = vector4(1203.24, -7108.66, 43.58, 293.07),
},
{    -- madam vendor
model = `CS_Fire_Breather`, -- guarma
coords2 = vector4(-1845.48, -1731.2, 85.57, 101.57),
}
}

Config.CardshopLocation =  {
 	['Cardshop4'] = {
		--name = '1',
		location = vector3(1309.64, -6858.61, 45.1), --vector3(175.08, -1320.79, 170.34),
		label = 'Sell Cards Tarot',
		--showblip = true
	},
	['Cardshop3'] = {
		--name = '2',
		location = vector3(2402.27, -1358.3, 45.59),
		label = 'Sell Cards Tarot',
		--showblip = true
	},
	['Cardshop2'] = {
		--name = '3',
		location = vector3(749.48, 1822.52, 239.18), 
		label = 'Sell Cards Tarot',
		--showblip = true
	}, 
	['Cardshop'] = {
		--name = '4',
		location = vector3(-1845.4, -1731.23, 85.57), --vector3(2402.27, -1358.3, 45.59),
		label = 'Sell Cards Tarot',
		--showblip = true
	},
}
--vector4(-86.65, 834.93, 170.34, 321.41)
Config.Blip = {
    blipName = 'Tarot', -- Config.Blip.blipName
    blipSprite = 'blip_mission_area_rc', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

Config.Badge = {
    ["card_boulderbadge"] = {
		--name = '5',
		Amount = 1,
		label = "Boulder Badge",
        reward = "card_boulderbadge",
        location = vector3(-3484.76, -3467.02, 0.12), -- vector3(282.24, 6789.04, 15.7),
		cards = {
		["card_graveler"] = 1, 
		["card_rhyhorn"] = 1,  
		["card_omastar"] = 1,
		["card_kabutops"] = 1,
		["card_onix"] = 1, 
		["card_geodude"] = 1,
		},
		--showblip = true
    },
    ["card_cascadebadge"] = {
		--name = '6',
		Amount = 1,
		label = "Cascade Badge",
        reward = "card_cascadebadge",
        location = vector3(2340.23, 995.64, 74.13), --vector3(-1844.97, -1195.94, 19.20),
		cards = {
		["card_blastoise"] = 1, 
		["card_lapras"] = 1, 
		["card_starmie"] = 1, 
		["card_psyduck"] = 1, 
		["card_togepi"] = 1,
		},
		--showblip = true
    },
    ["card_thunderbadge"] = {
		--name = '7',
		Amount = 1,
		label = "Thunder Badge",
        reward = "card_thunderbadge",
        location = vector3(1182.39, 2035.27, 323.91), --vector3(2729.21, 1577.74, 66.54),
		cards = {
			["card_zapdos"] = 1, 
			["card_pikachu"] = 1, 
			["card_jolteon"] = 1, 
			["card_electabuzz"] = 1, 
			["card_electrode"] = 1, 
			["card_magneton"] = 1,
		},
		--showblip = true
    },
    ["card_rainbowbadge"] = {
		--name = '8',
		Amount = 1,
		label = "Rainbow Badge",
        reward = "card_rainbowbadge",
        location = vector3(631.92, -1251.45, 41.55), --vector3(-86.19, 834.38, 235.92),
		cards = { 
			["card_victreebel"] = 1, 
			["card_tangela"] = 1, 
			["card_vileplume"] = 1, 
			["card_scyther"] = 1, 
			["card_bellsprout"] = 1, 
			["card_venusaur"] = 1,
		},
		--showblip = true
    },
    ["card_soulbadge"] = {
		--name = '9',
		Amount = 1,
		label = "Soul Badge",
        reward = "card_soulbadge",
        location = vector3(-156.34, 1488.86, 116.11), --vector3(-758.68, -1046.87, 13.6),
		cards = { 
			["card_koffing"] = 1, 
			["card_weezing"] = 1, 
			["card_snorlax"] = 1, 
			["card_venonat"] = 1, 
			["card_venomoth"] = 1, 
			["card_golbat"] = 1,
		},
		--showblip = true
    },
    ["card_marshbadge"] = {
		--name = '10',
		Amount = 1,
		label = "Marsh Badge",
        reward = "card_marshbadge",
        location = vector3(-1403.78, -2330.28, 43.04), --vector3(387.26, 3585.02, 33.29),
		cards = { 
			["card_alakazam"] = 1, 
			["card_mr_mime"] = 1, 
			["card_abra"] = 1, 
			["card_kadabra"] = 1, 
			["card_hypno"] = 1, 
			["card_jynx"] = 1,
		},
		--showblip = true
    },
    ["card_volcanobadge"] = {
		--name = '11',
		Amount = 1,
		label = "Volcano Badge",
        reward = "card_volcanobadge",
        location = vector3(-2812.96, -4395.96, -17.18), --vector3(2944.06, 2747.0, 43.5),
		cards = { 
			["card_arcanine"] = 1, 
			["card_rapidash"] = 1, 
			["card_ninetails"] = 1, 
			["card_magmar"] = 1, 
			["card_charizard"] =1, 
			["card_moltres"] = 1,
		},
		--showblip = true
    },
    ["card_earthbadge"] = {
		--name = '12',
		Amount = 1,
		label = "Earth Badge",
        reward = "card_earthbadge",
        location = vector3(353.83, -17.12, 107.1), --vector3(-2588.14, 1911.6, 167.6),
		cards = { 
			["card_rhydon"] = 1, 
			["card_nidoking"] = 1, 
			["card_nidoqueen"] = 1, 
			["card_mewtwo"] = 1, 
			["card_dugtrio"] = 1, 
			["card_persian"] = 1,
		},
		--showblip = true
    },
    ["card_trophybadge"] = {
		--name = '13',
		Amount = 1,
		label = "League Trophy",
        reward = "trophybadge",
        location = vector3(1203.24, -7108.66, 43.58), --vector3(200.5, -873.09, 30.91),
		cards = { 
			["card_boulderbadge"] = 1, 
			["card_cascadebadge"] = 1, 
			["card_thunderbadge"] = 1, 
			["card_rainbowbadge"] = 1, 
			["card_soulbadge"] = 1, 
			["card_marshbadge"] = 1, 
			["card_volcanohbadge"] = 1, 
			["card_earthbadge"] = 1,
		},
		--showblip = true
    },
}

Config.CardshopBlipText = "CardsTarot"
Config.CardshopBlipColor = 5
Config.CardshopBlipSprite = 272

Config.CardshopItems = {
	['card_boulderbadge']		 = 1000,
	['card_cascadebadge']		 = 1000,
	['card_thunderbadge']		 = 1000,
	['card_rainbowbadge']		 = 1000,
	['card_soulbadge']			 = 1000,
	['card_marshbadge']			 = 1000,
	['card_volcanobadge']		 = 1000,
	['card_earthbadge']			 = 1000,
	['card_trophybadge']			 = 15000,
	['card_abra']				 = 50,
	['card_aerodactyl']			 = 250,
	['card_alakazam']			 = 250,
	['card_arbok']				 = 50,
	['card_arcanine']			 = 50,
	['card_articuno']			 = 250,
	['card_beedrill']			 = 50,
	['card_bellsprout']			 = 50,
	['card_blastoise']			 = 100,
	['card_butterfree']			 = 50,
	['card_caterpie']			 = 50,
	['card_chansey']				 = 50,
	['card_charizard']			 = 100,
	['card_charmander']			 = 50,
	['card_charmeleon']			 = 50,
	['card_clefable']			 = 50,
	['card_clefairy']			 = 50,
	['card_cloyster']			 = 50,
	['card_cubone']				 = 50,
	['card_sandslash']			 = 50,
	['card_dugtrio']				 = 50,
	['card_dewgong']				 = 50,
	['card_diglett']				 = 50,
	['card_ditto']				 = 100,
	['card_doduo']				 = 50,
	['card_dragonair']			 = 250,
	['card_dragonite']			 = 250,
	['card_dratini']				 = 250,
	['card_drowzee']				 = 50,
	['card_eevee']				 = 50,
	['card_ekans']				 = 50,
	['card_electabuzz']			 = 50,
	['card_electrode']			 = 50,
	['card_exeggcute']			 = 50,
	['card_exeggutor']			 = 50,
	['card_farfetchd']			 = 50,
	['card_fearow']				 = 50,
	['card_flareon']				 = 50,
	['card_gastly']				 = 50,
	['card_gengar']				 = 50,
	['card_geodude']				 = 50,
	['card_gloom']				 = 50,
	['card_golbat']				 = 50,
	['card_goldeen']				 = 50,
	['card_golduck']				 = 50,
	['card_golem']				 = 50,
	['card_graveler']			 = 50,
	['card_grimer']				 = 50,
	['card_growlithe']			 = 50,
	['card_gyrarados']			 = 100,
	['card_haunter']				 =  50,
	['card_hitmonchan']			 = 100,
	['card_hitmonlee']			 = 100,
	['card_horsea']				 = 50,
	['card_hypno']				 = 50,
	['card_ivysaur']				 = 50,
	['card_jigglypuff']			 = 50,
	['card_jolteon']				 = 50,
	['card_jynx']				 = 100,
	['card_kabuto']				 = 250,
	['card_kabutops']			 = 250,
	['card_kadabra']				 = 50,
	['card_kakuna']				 = 50,
	['card_kangaskhan']			 = 50,
	['card_kingler']				 = 50,
	['card_koffing']				 = 50,
	['card_krabby']				 = 50,
	['card_lapras']				 = 50,
	['card_lickitung']			 = 50,
	['card_machamp']				 = 100,
	['card_machoke']				 = 50,
	['card_machop']				 = 50,
	['card_magikarp']			 = 50,
	['card_magmar']				 = 50,
	['card_magnemite']			 = 50,
	['card_magneton']			 = 50,
	['card_mankey']				 = 50,
	['card_marowak']				 = 50,
	['card_meowth']				 = 50,
	['card_metapod']				 = 50,
	['card_mew']					 = 250,
	['card_mewtwo']				 = 250,
	['card_moltres']				 = 250,
	['card_mr_mime']				 = 50,
	['card_muk']					 = 50,
	['card_nidoking']			 = 100,
	['card_nidoqueen']			 = 100,
	['card_nidorina']			 = 50,
	['card_nidorino']			 = 50,
	['card_ninetails']			 = 50,
	['card_oddish']				 = 50,
	['card_omanyte']				 = 250,
	['card_omastar']				 = 250,
	['card_onix']				 = 100,
	['card_paras']				 = 50,
	['card_parasect']			 = 50,
	['card_persian']				 = 50,
	['card_pidgeotto']			 = 50,
	['card_pidgey']				 = 50,
	['card_pikachu']		 		 = 50,
	['card_pinsir']			 	 = 50,
	['card_poliwag']				 = 50,
	['card_poliwhirl']			 = 50,
	['card_poliwrath']			 = 50,
	['card_ponyta']				 = 50,
	['card_porygon']				 = 250,
	['card_primeape']			 = 50,
	['card_psyduck']				 = 50,
	['card_raichu']				 = 100,
	['card_rapidash']			 = 50,
	['card_raticate']			 = 50,
	['card_rattata']				 = 50,
	['card_rhydon']				 = 50,
	['card_rhyhorn']				 = 50,
	['card_sandshrew']			 = 50,
	['card_scyther']				 = 100,
	['card_seadra']				 = 50,
	['card_seaking']				 = 50,
	['card_seel']				 = 50,
	['card_shellder']			 = 50,
	['card_slowbro']				 = 50,
	['card_slowpoke']			 = 50,
	['card_snorlax']				 = 250,
	['card_spearow']				 = 50,
	['card_squirtle']			 = 50,
	['card_starmie']				 = 100,
	['card_staryu']				 = 50,
	['card_tangela']				 = 50,
	['card_tauros']				 = 50,
	['card_tentacool']			 = 50,
	['card_tentacruel']			 = 50,
	['card_togepi']				 = 50,
	['card_vaporeon']			 = 50,
	['card_venomoth']			 = 50,
	['card_venonat']				 = 50,
	['card_venusaur']			 = 100,
	['card_victreebel']			 = 50,
	['card_vileplume']			 = 50,
	['card_voltorb']				 = 50,
	['card_vulpix']				 = 50,
	['card_wartortle']			 = 50,
	['card_weedle']				 = 50,
	['card_weepinbell']			 = 50,
	['card_weezing']				 = 50,
	['card_wigglytuff']			 = 50,
	['card_zapdos']				 = 250,
	['card_zubat']				 = 50,
	['card_bulbasaur']			 = 50,
	['card_nidoran']				 = 50,
	['card_charizardv']			 = 700,
	['card_vmaxcharizard']		 = 1300,
	['card_rainbowvmaxcharizard'] = 2700,
	['card_mewv']				 = 600,
	['card_mewtwogx']			 = 1500,
	['card_rainbowmewtwogx']		 = 2400,
	['card_pikachuv']			 = 400,
	['card_vmaxpikachu']			 = 900,
	['card_rainbowvmaxpikachu']	 = 2000,
	['card_snorlaxv']			 = 500,
	['card_snorlaxvmax']			 = 1000,
	['card_snorlaxvmaxrainbow']	 = 2000,
	['card_venusaurv']			 = 500,
	['card_venusaurvmax']		 = 1200,
	['card_blastoisev']			 = 500,
	['card_blastoisevmax']		 = 1200
}