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
		--showblip = true
	},
	['Cardshop3'] = {
		name = 'Cardshop2',
		location = vector3(2402.27, -1358.3, 45.59),
		label = 'Sell Cards Tarot',
		--showblip = true
	},
	['Cardshop2'] = {
		name = 'Cardshop3',
		location = vector3(749.48, 1822.52, 239.18), 
		label = 'Sell Cards Tarot',
		--showblip = true
	}, 
	['Cardshop'] = {
		name = 'Cardshop4',
		location = vector3(-1748.39, -1626.08, 89.86), --vector3(2402.27, -1358.3, 45.59),
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
		--showblip = true
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
		--showblip = true
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
		--showblip = true
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
		--showblip = true
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
		--showblip = true
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
		--showblip = true
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
		--showblip = true
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
		--showblip = true
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
		--showblip = true
    },
}

Config.CardshopBlipText = "CardsTarot"
Config.CardshopBlipColor = 5
Config.CardshopBlipSprite = 272

Config.CardshopItems = {
	['card_boulderbadge']		 = 10,
	['card_cascadebadge']		 = 10,
	['card_thunderbadge']		 = 10,
	['card_rainbowbadge']		 = 10,
	['card_soulbadge']			 = 10,
	['card_marshbadge']			 = 10,
	['card_volcanobadge']		 = 10,
	['card_earthbadge']			 = 10,
	['card_trophybadge']			 = 15,
	['card_abra']				 = 5,
	['card_aerodactyl']			 = 25,
	['card_alakazam']			 = 25,
	['card_arbok']				 = 5,
	['card_arcanine']			 = 5,
	['card_articuno']			 = 25,
	['card_beedrill']			 = 5,
	['card_bellsprout']			 = 5,
	['card_blastoise']			 = 1,
	['card_butterfree']			 = 5,
	['card_caterpie']			 = 5,
	['card_chansey']				 = 5,
	['card_charizard']			 = 1,
	['card_charmander']			 = 5,
	['card_charmeleon']			 = 5,
	['card_clefable']			 = 5,
	['card_clefairy']			 = 5,
	['card_cloyster']			 = 5,
	['card_cubone']				 = 5,
	['card_sandslash']			 = 5,
	['card_dugtrio']				 = 5,
	['card_dewgong']				 = 5,
	['card_diglett']				 = 5,
	['card_ditto']				 = 1,
	['card_doduo']				 = 5,
	['card_dragonair']			 = 25,
	['card_dragonite']			 = 25,
	['card_dratini']				 = 25,
	['card_drowzee']				 = 5,
	['card_eevee']				 = 5,
	['card_ekans']				 = 5,
	['card_electabuzz']			 = 5,
	['card_electrode']			 = 5,
	['card_exeggcute']			 = 5,
	['card_exeggutor']			 = 5,
	['card_farfetchd']			 = 5,
	['card_fearow']				 = 5,
	['card_flareon']				 = 5,
	['card_gastly']				 = 5,
	['card_gengar']				 = 5,
	['card_geodude']				 = 5,
	['card_gloom']				 = 5,
	['card_golbat']				 = 5,
	['card_goldeen']				 = 5,
	['card_golduck']				 = 5,
	['card_golem']				 = 5,
	['card_graveler']			 = 5,
	['card_grimer']				 = 5,
	['card_growlithe']			 = 5,
	['card_gyrarados']			 = 1,
	['card_haunter']				 =  5,
	['card_hitmonchan']			 = 1,
	['card_hitmonlee']			 = 1,
	['card_horsea']				 = 5,
	['card_hypno']				 = 5,
	['card_ivysaur']				 = 5,
	['card_jigglypuff']			 = 5,
	['card_jolteon']				 = 5,
	['card_jynx']				 = 1,
	['card_kabuto']				 = 25,
	['card_kabutops']			 = 25,
	['card_kadabra']				 = 5,
	['card_kakuna']				 = 5,
	['card_kangaskhan']			 = 5,
	['card_kingler']				 = 5,
	['card_koffing']				 = 5,
	['card_krabby']				 = 5,
	['card_lapras']				 = 5,
	['card_lickitung']			 = 5,
	['card_machamp']				 = 1,
	['card_machoke']				 = 5,
	['card_machop']				 = 5,
	['card_magikarp']			 = 5,
	['card_magmar']				 = 5,
	['card_magnemite']			 = 5,
	['card_magneton']			 = 5,
	['card_mankey']				 = 5,
	['card_marowak']				 = 5,
	['card_meowth']				 = 5,
	['card_metapod']				 = 5,
	['card_mew']					 = 25,
	['card_mewtwo']				 = 25,
	['card_moltres']				 = 25,
	['card_mr_mime']				 = 5,
	['card_muk']					 = 5,
	['card_nidoking']			 = 1,
	['card_nidoqueen']			 = 1,
	['card_nidorina']			 = 5,
	['card_nidorino']			 = 5,
	['card_ninetails']			 = 5,
	['card_oddish']				 = 5,
	['card_omanyte']				 = 25,
	['card_omastar']				 = 25,
	['card_onix']				 = 1,
	['card_paras']				 = 5,
	['card_parasect']			 = 5,
	['card_persian']				 = 5,
	['card_pidgeotto']			 = 5,
	['card_pidgey']				 = 5,
	['card_pikachu']		 		 = 5,
	['card_pinsir']			 	 = 5,
	['card_poliwag']				 = 5,
	['card_poliwhirl']			 = 5,
	['card_poliwrath']			 = 5,
	['card_ponyta']				 = 5,
	['card_porygon']				 = 25,
	['card_primeape']			 = 5,
	['card_psyduck']				 = 5,
	['card_raichu']				 = 1,
	['card_rapidash']			 = 5,
	['card_raticate']			 = 5,
	['card_rattata']				 = 5,
	['card_rhydon']				 = 5,
	['card_rhyhorn']				 = 5,
	['card_sandshrew']			 = 5,
	['card_scyther']				 = 1,
	['card_seadra']				 = 5,
	['card_seaking']				 = 5,
	['card_seel']				 = 5,
	['card_shellder']			 = 5,
	['card_slowbro']				 = 5,
	['card_slowpoke']			 = 5,
	['card_snorlax']				 = 25,
	['card_spearow']				 = 5,
	['card_squirtle']			 = 5,
	['card_starmie']				 = 1,
	['card_staryu']				 = 5,
	['card_tangela']				 = 5,
	['card_tauros']				 = 5,
	['card_tentacool']			 = 5,
	['card_tentacruel']			 = 5,
	['card_togepi']				 = 5,
	['card_vaporeon']			 = 5,
	['card_venomoth']			 = 5,
	['card_venonat']				 = 5,
	['card_venusaur']			 = 1,
	['card_victreebel']			 = 5,
	['card_vileplume']			 = 5,
	['card_voltorb']				 = 5,
	['card_vulpix']				 = 5,
	['card_wartortle']			 = 5,
	['card_weedle']				 = 5,
	['card_weepinbell']			 = 5,
	['card_weezing']				 = 5,
	['card_wigglytuff']			 = 5,
	['card_zapdos']				 = 25,
	['card_zubat']				 = 5,
	['card_bulbasaur']			 = 5,
	['card_nidoran']				 = 5,
	['card_charizardv']			 = 7,
	['card_vmaxcharizard']		 = 13,
	['card_rainbowvmaxcharizard'] = 27,
	['card_mewv']				 = 6,
	['card_mewtwogx']			 = 15,
	['card_rainbowmewtwogx']		 = 24,
	['card_pikachuv']			 = 4,
	['card_vmaxpikachu']			 = 9,
	['card_rainbowvmaxpikachu']	 = 20,
	['card_snorlaxv']			 = 5,
	['card_snorlaxvmax']			 = 10,
	['card_snorlaxvmaxrainbow']	 = 20,
	['card_venusaurv']			 = 5,
	['card_venusaurvmax']		 = 12,
	['card_blastoisev']			 = 5,
	['card_blastoisevmax']		 = 12
}