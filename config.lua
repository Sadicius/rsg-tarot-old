Config = {}

Config.DistanceSpawn = 20.0 -- Distance before spawning/despawning the ped. (GTA Units.)
Config.FadeIn = true


Config.Keyshop = 'J'
Config.Keytrade = 'E'


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
coords2 = vector4(-1748.39, -1626.08, 89.86, 71.28), -- -1845.48, -1731.2, 85.57, 101.57),
}
}

Config.CardshopLocation =  {
 	['Cardshop4'] = {
		name = 'Cardshop1',
		location = vector3(1309.64, -6858.61, 45.1), --vector3(175.08, -1320.79, 170.34),
		label = 'Sell Cards Tarot',
		--showblip = true,
		showTarget = true
	},
	['Cardshop3'] = {
		name = 'Cardshop2',
		location = vector3(2402.27, -1358.3, 45.59),
		label = 'Sell Cards Tarot',
		--showblip = true,
		showTarget = true
	},
	['Cardshop2'] = {
		name = 'Cardshop3',
		location = vector3(749.48, 1822.52, 239.18), 
		label = 'Sell Cards Tarot',
		--showblip = true,
		showTarget = true
	}, 
	['Cardshop'] = {
		name = 'Cardshop4',
		location = vector3(-1748.39, -1626.08, 89.86), --vector3(2402.27, -1358.3, 45.59),
		label = 'Sell Cards Tarot',
		--showblip = true,
		showTarget = true
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
		name = 'Cardshop5',
		Amount = 1,
		label = "Baraja N1",
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
		--showblip = true,
		showTarget = true
    },
    ["card_cascadebadge"] = {
		name = 'Cardshop6',
		Amount = 1,
		label = "Baraja N2",
        reward = "card_cascadebadge",
        location = vector3(2340.23, 995.64, 74.13), --vector3(-1844.97, -1195.94, 19.20),
		cards = {
		["card_blastoise"] = 1, 
		["card_lapras"] = 1, 
		["card_starmie"] = 1, 
		["card_psyduck"] = 1, 
		["card_togepi"] = 1,
		},
		--showblip = true,
		showTarget = true
    },
    ["card_thunderbadge"] = {
		name = 'Cardshop7',
		Amount = 1,
		label = "Baraja N7",
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
		--showblip = true,
		showTarget = true
    },
    ["card_rainbowbadge"] = {
		name = 'Cardshop8',
		Amount = 1,
		label = "Baraja N5",
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
		--showblip = true,
		showTarget = true
    },
    ["card_soulbadge"] = {
		name = 'Cardshop9',
		Amount = 1,
		label = "Baraja N6",
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
		--showblip = true,
		showTarget = true
    },
    ["card_marshbadge"] = {
		name = 'Cardshop10',
		Amount = 1,
		label = "Baraja N4",
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
		--showblip = true,
		showTarget = true
    },
    ["card_volcanobadge"] = {
		name = 'Cardshop11',
		Amount = 1,
		label = "Baraja N8",
        reward = "card_volcanobadge",
        location = vector3(-2812.96, -4395.96, -17.18), --vector3(2944.06, 2747.0, 43.5),
		cards = { 
			["card_arcanine"] = 1,
			["card_rapidash"] = 1,
			["card_ninetails"] = 1,
			["card_magmar"] = 1,
			["card_charizard"] =1,
			["card_moltres"] = 1
		},
		--showblip = true,
		showTarget = true
    },
    ["card_earthbadge"] = {
		name = 'Cardshop12',
		Amount = 1,
		label = "Baraja N3",
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
		--showblip = true,
		showTarget = true
    },
    ["card_trophybadge"] = {
		name = 'Cardshop13',
		Amount = 1,
		label = "Gran Baraja",
        reward = "trophybadge",
        location = vector3(1203.24, -7108.66, 43.58), --vector3(2.5, -873.09, 30.91),
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
		--showblip = true,
		showTarget = true
    },
}

Config.CardshopBlipText = "CardsTarot"
Config.CardshopBlipColor = 5
Config.CardshopBlipSprite = 272

Config.CardshopItems = {
	['card_boulderbadge']		 = 1.0,
	['card_cascadebadge']		 = 1.0,
	['card_thunderbadge']		 = 1.0,
	['card_rainbowbadge']		 = 1.0,
	['card_soulbadge']			 = 1.0,
	['card_marshbadge']			 = 1.0,
	['card_volcanobadge']		 = 1.0,
	['card_earthbadge']			 = 1.0,
	['card_trophybadge']			 = 1.5,
	['card_abra']				 = 0.5,
	['card_aerodactyl']			 = 2.5,
	['card_alakazam']			 = 2.5,
	['card_arbok']				 = 0.5,
	['card_arcanine']			 = 0.5,
	['card_articuno']			 = 2.5,
	['card_beedrill']			 = 0.5,
	['card_bellsprout']			 = 0.5,
	['card_blastoise']			 = 0.1,
	['card_butterfree']			 = 0.5,
	['card_caterpie']			 = 0.5,
	['card_chansey']				 = 0.5,
	['card_charizard']			 = 0.1,
	['card_charmander']			 = 0.5,
	['card_charmeleon']			 = 0.5,
	['card_clefable']			 = 0.5,
	['card_clefairy']			 = 0.5,
	['card_cloyster']			 = 0.5,
	['card_cubone']				 = 0.5,
	['card_sandslash']			 = 0.5,
	['card_dugtrio']				 = 0.5,
	['card_dewgong']				 = 0.5,
	['card_diglett']				 = 0.5,
	['card_ditto']				 = 0.1,
	['card_doduo']				 = 0.5,
	['card_dragonair']			 = 2.5,
	['card_dragonite']			 = 2.5,
	['card_dratini']				 = 2.5,
	['card_drowzee']				 = 0.5,
	['card_eevee']				 = 0.5,
	['card_ekans']				 = 0.5,
	['card_electabuzz']			 = 0.5,
	['card_electrode']			 = 0.5,
	['card_exeggcute']			 = 0.5,
	['card_exeggutor']			 = 0.5,
	['card_farfetchd']			 = 0.5,
	['card_fearow']				 = 0.5,
	['card_flareon']				 = 0.5,
	['card_gastly']				 = 0.5,
	['card_gengar']				 = 0.5,
	['card_geodude']				 = 0.5,
	['card_gloom']				 = 0.5,
	['card_golbat']				 = 0.5,
	['card_goldeen']				 = 0.5,
	['card_golduck']				 = 0.5,
	['card_golem']				 = 0.5,
	['card_graveler']			 = 0.5,
	['card_grimer']				 = 0.5,
	['card_growlithe']			 = 0.5,
	['card_gyrarados']			 = 0.1,
	['card_haunter']				 =  0.5,
	['card_hitmonchan']			 = 0.1,
	['card_hitmonlee']			 = 0.1,
	['card_horsea']				 = 0.5,
	['card_hypno']				 = 0.5,
	['card_ivysaur']				 = 0.5,
	['card_jigglypuff']			 = 0.5,
	['card_jolteon']				 = 0.5,
	['card_jynx']				 = 0.1,
	['card_kabuto']				 = 2.5,
	['card_kabutops']			 = 2.5,
	['card_kadabra']				 = 5,
	['card_kakuna']				 = 5,
	['card_kangaskhan']			 = 5,
	['card_kingler']				 = 5,
	['card_koffing']				 = 5,
	['card_krabby']				 = 0.5,
	['card_lapras']				 = 0.5,
	['card_lickitung']			 = 0.5,
	['card_machamp']				 = 0.1,
	['card_machoke']				 = 0.5,
	['card_machop']				 = 0.5,
	['card_magikarp']			 = 0.5,
	['card_magmar']				 = 0.5,
	['card_magnemite']			 = 0.5,
	['card_magneton']			 = 0.5,
	['card_mankey']				 = 0.5,
	['card_marowak']				 = 0.5,
	['card_meowth']				 = 0.5,
	['card_metapod']				 = 0.5,
	['card_mew']					 = 2.5,
	['card_mewtwo']				 = 2.5,
	['card_moltres']				 = 2.5,
	['card_mr_mime']				 = 0.5,
	['card_muk']					 = 0.5,
	['card_nidoking']			 = 0.1,
	['card_nidoqueen']			 = 0.1,
	['card_nidorina']			 = 0.5,
	['card_nidorino']			 = 0.5,
	['card_ninetails']			 = 0.5,
	['card_oddish']				 = 0.5,
	['card_omanyte']				 = 2.5,
	['card_omastar']				 = 2.5,
	['card_onix']				 = 0.1,
	['card_paras']				 = 0.5,
	['card_parasect']			 = 0.5,
	['card_persian']				 = 0.5,
	['card_pidgeotto']			 = 0.5,
	['card_pidgey']				 = 0.5,
	['card_pikachu']		 		 = 0.5,
	['card_pinsir']			 	 = 0.5,
	['card_poliwag']				 = 0.5,
	['card_poliwhirl']			 = 0.5,
	['card_poliwrath']			 = 0.5,
	['card_ponyta']				 = 0.5,
	['card_porygon']				 = 2.5,
	['card_primeape']			 = 0.5,
	['card_psyduck']				 = 0.5,
	['card_raichu']				 = 0.1,
	['card_rapidash']			 = 0.5,
	['card_raticate']			 = 0.5,
	['card_rattata']				 = 0.5,
	['card_rhydon']				 = 0.5,
	['card_rhyhorn']				 = 0.5,
	['card_sandshrew']			 = 0.5,
	['card_scyther']				 = 0.1,
	['card_seadra']				 = 0.5,
	['card_seaking']				 = 0.5,
	['card_seel']				 = 0.5,
	['card_shellder']			 = 0.5,
	['card_slowbro']				 = 0.5,
	['card_slowpoke']			 = 0.5,
	['card_snorlax']				 = 2.5,
	['card_spearow']				 = 5,
	['card_squirtle']			 = 0.5,
	['card_starmie']				 = 0.1,
	['card_staryu']				 = 0.5,
	['card_tangela']				 = 0.5,
	['card_tauros']				 = 0.5,
	['card_tentacool']			 = 0.5,
	['card_tentacruel']			 = 0.5,
	['card_togepi']				 = 0.5,
	['card_vaporeon']			 = 0.5,
	['card_venomoth']			 = 0.5,
	['card_venonat']				 = 0.5,
	['card_venusaur']			 = 0.1,
	['card_victreebel']			 = 0.5,
	['card_vileplume']			 = 0.5,
	['card_voltorb']				 = 0.5,
	['card_vulpix']				 = 0.5,
	['card_wartortle']			 = 0.5,
	['card_weedle']				 = 0.5,
	['card_weepinbell']			 = 0.5,
	['card_weezing']				 = 0.5,
	['card_wigglytuff']			 = 0.5,
	['card_zapdos']				 = 2.5,
	['card_zubat']				 = 0.5,
	['card_bulbasaur']			 = 0.5,
	['card_nidoran']				 = 0.5,
	['card_charizardv']			 = 0.7,
	['card_vmaxcharizard']		 = 1.3,
	['card_rainbowvmaxcharizard'] = 2.7,
	['card_mewv']				 = 0.6,
	['card_mewtwogx']			 = 1.5,
	['card_rainbowmewtwogx']		 = 2.4,
	['card_pikachuv']			 = 0.4,
	['card_vmaxpikachu']			 = 0.9,
	['card_rainbowvmaxpikachu']	 = 2.0,
	['card_snorlaxv']			 = 0.5,
	['card_snorlaxvmax']			 = 1.0,
	['card_snorlaxvmaxrainbow']	 = 2.0,
	['card_venusaurv']			 = 0.5,
	['card_venusaurvmax']		 = 1.2,
	['card_blastoisev']			 = 0.5,
	['card_blastoisevmax']		 = 1.2
}
