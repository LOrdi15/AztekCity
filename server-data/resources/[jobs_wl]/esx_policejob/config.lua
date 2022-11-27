Config                            = {}

Config.DrawDistance               = 1
Config.MarkerType                 = 1
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = false -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- enable blips for cops on duty, requires esx_society
Config.EnableCustomPeds           = false -- enable custom peds in cloak room? See Config.CustomPeds below to customize peds

Config.EnableESXService           = false -- enable esx service?
Config.MaxInService               = -1

Config.Locale                     = 'en'
Config.ArrestDistance			  = 3.0 

Config.KeyToOpenCarGarage = 38			-- default 38 is E
Config.KeyToOpenHeliGarage = 38			-- default 38 is E
Config.KeyToOpenBoatGarage = 38			-- default 38 is E
Config.almacen = vector3(362.01174926758,-1599.1656494141,25.451713562012)
Config.extras = vector3(362.01174926758,-1599.1656494141,-25.451713562012)
Config.PoliceDatabaseName = 'police'	-- set the exact name from your jobs database for police

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(-565.411011, -127.410988, 38.429321),
			Sprite  = 60,
			Display = 4,
			Scale   = 0.9,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(460.14639, -999.7487, 31.204488)
			--vector3(830.1, -1283.7, 24.3)  -- AQUI SE AGREGA UN NUEVO ARMARIO
		},

		Armories = {
			vector3(362.32467651367,-1603.1579589844,25.451711654663)
		},
		
		BossActions = {
			vector3(461.45208, -985.9766, 31.659919)
		}

	}

}

Config.AuthorizedWeapons = {
	alumne = {	},
	recruit = {	},
	subofficer = { },
	officer_one = { },
	officer_two = { },
	officer_three = { },
	sub_inspector = { },
	inspector = { },
	sergeant = { },
	lieutenant = { },
	boss = {

		{weapon = 'WEAPON_APPISTOL', price = 0},
		{weapon = 'WEAPON_BZGAS', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_COMBATPISTOL', price = 0},
		{weapon = 'WEAPON_HEAVYPISTOL', price = 0},
		{weapon = 'WEAPON_SMG', price = 0},
		{weapon = 'WEAPON_ADVANCEDRIFLE', price = 0},
		{weapon = 'WEAPON_CARBINERIFLE', price = 0}
	}
}

Config.CustomPeds = {
	shared = {
		{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
		{label = 'Police Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},
    alumne = {},
	recruit = {},
	subofficer = {},
	officer_one = {},
	officer_two = {},
	officer_three = {},
	sub_inspector = {},
	inspector = {},
	sergeant = {},
	lieutenant = {},
	boss = {
		{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {
	alumne = {
		male = {
			tshirt_1 = 46,  tshirt_2 = 0,
			torso_1 = 61,   torso_2 = 10,
			decals_1 = 0,   decals_2 = 0,
			arms = 16,	arms_2 = 2,
			pants_1 = 31,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = -1,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = -1,    mask_2 = -1,
			glasses_1 = -1,	glasses_2 = 0,
			bproof_1 = 39,  bproof_2 = 0
		},
		female = {
			tshirt_1 = 18,  tshirt_2 = 0,
			torso_1 = 18,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 1, 	arms_2 = 0,
			pants_1 = 16,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = -1,    mask_2 = 0,
			glasses_1 = 5,	glasses_2 = 0,
			bproof_1 = 0,  bproof_2 = 0
		}
	},
	recruit = {
		male = {
			tshirt_1 = 46,  tshirt_2 = 0,
			torso_1 = 179,   torso_2 = 1,
			decals_1 = 0,   decals_2 = 0,
			arms = 4, 	arms_2 = 0,
			pants_1 = 31,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = 88,  helmet_2 = 3,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = -1,    mask_2 = 0,
			glasses_1 = -1,	glasses_2 = 0,
			bproof_1 = 30,  bproof_2 = 3
		},
		female = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 18,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 1, 	arms_2 = 2,
			pants_1 = 16,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 1,
			glasses_1 = 5,	glasses_2 = 0,
			bproof_1 = 4,  bproof_2 = 1
		}
	},
	subofficer = {
		male = {
			tshirt_1 = 51,  tshirt_2 = 0,
			torso_1 = 247,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 1, 	arms_2 = 0,
			pants_1 = 22,   pants_2 = 0,
			shoes_1 = 36,   shoes_2 = 0,
			helmet_1 = 50,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = -1,	glasses_2 = 0,
			bproof_1 = 17,  bproof_2 = 0
		},
		female = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 266,   torso_2 = 1,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,	   arms_2 = 0,
			pants_1 = 70,   pants_2 = 0,
			shoes_1 = 50,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 5,	glasses_2 = 0,
			bproof_1 = 7,  bproof_2 = 0
		}
	},
	officer_one = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 1,
			torso_1 = 185,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,	    arms_2 = 0,
			pants_1 = 80,   pants_2 = 0,
			shoes_1 = 40,   shoes_2 = 0,
			helmet_1 = 32,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = -1,	glasses_2 = 0,
			bproof_1 = 16,  bproof_2 = 0
		},
		female = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 339,   torso_2 = 4,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,	    arms_2 = 0,
			pants_1 = 66,   pants_2 = 2,
			shoes_1 = 50,   shoes_2 = 0,
			helmet_1 = 34,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 5,	glasses_2 = 0,
			bproof_1 = 7,  bproof_2 = 0
		}
	},
	officer_two = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 1,
			torso_1 = 185,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,	    arms_2 = 0,
			pants_1 = 80,   pants_2 = 0,
			shoes_1 = 40,   shoes_2 = 0,
			helmet_1 = 32,  helmet_2 = 1,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = -1,	glasses_2 = 0,
			bproof_1 = 18,  bproof_2 = 0
		},
		female = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 339,   torso_2 = 4,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,	    arms_2 = 0,
			pants_1 = 66,   pants_2 = 2,
			shoes_1 = 50,   shoes_2 = 0,
			helmet_1 = 34,  helmet_2 = 1,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 5,	glasses_2 = 0,
			bproof_1 = 7,  bproof_2 = 0
		}
	},
	officer_three = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 1,
			torso_1 = 185,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,	    arms_2 = 0,
			pants_1 = 80,   pants_2 = 0,
			shoes_1 = 40,   shoes_2 = 0,
			helmet_1 = 32,  helmet_2 = 2,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = -1,	glasses_2 = 0,
			bproof_1 = 15,  bproof_2 = 0
		},
		female = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 339,   torso_2 = 4,
			decals_1 = 0,   decals_2 = 0,
			arms = 1,	    arms_2 = 0,
			pants_1 = 66,   pants_2 = 2,
			shoes_1 = 50,   shoes_2 = 0,
			helmet_1 = 34,  helmet_2 = 2,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 5,	glasses_2 = 0,
			bproof_1 = 7,  bproof_2 = 0
		}
	},
	sub_inspector = {
		male = {
			tshirt_1 = 20,  tshirt_2 = 0,
			torso_1 = 20,   torso_2 = 5,
			decals_1 = 0,   decals_2 = 0,
			arms = 4,	    arms_2 = 0,
			pants_1 = 58,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 5,	glasses_2 = 0,
			bproof_1 = 35,  bproof_2 = 0
		},
		female = {
			tshirt_1 = 9,  tshirt_2 = 0,
			torso_1 = 331,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 3,	   arms_2 = 2,
			pants_1 = 88,   pants_2 = 2,
			shoes_1 = 0,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 21,	glasses_2 = 0,
			bproof_1 = 17,  bproof_2 = 0
		}
	},
	inspector = {
		male = {
			tshirt_1 = 20,  tshirt_2 = 0,
			torso_1 = 20,   torso_2 = 16,
			decals_1 = 0,   decals_2 = 0,
			arms = 4,	    arms_2 = 0,
			pants_1 = 31,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 5,	glasses_2 = 0,
			bproof_1 = 35,  bproof_2 = 0
		},
		female = {
			tshirt_1 = 9,  tshirt_2 = 0,
			torso_1 = 331,   torso_2 = 17,
			decals_1 = 0,   decals_2 = 0,
			arms = 3,	    arms_2 = 0,
			pants_1 = 88,   pants_2 = 2,
			shoes_1 = 0,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 21,	glasses_2 = 0,
			bproof_1 = 17,  bproof_2 = 0
		}
	},
	sergeant = {
		male = {
			tshirt_1 = 20,  tshirt_2 = 0,
			torso_1 = 20,   torso_2 = 16,
			decals_1 = 0,   decals_2 = 0,
			arms = 4,	    arms_2 = 0,
			pants_1 = 31,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 5,	glasses_2 = 0,
			bproof_1 = 35,  bproof_2 = 0
		},
		female = {
			tshirt_1 = 9,  tshirt_2 = 0,
			torso_1 = 331,   torso_2 = 17,
			decals_1 = 0,   decals_2 = 0,
			arms = 3,	    arms_2 = 0,
			pants_1 = 88,   pants_2 = 2,
			shoes_1 = 0,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 21,	glasses_2 = 0,
			bproof_1 = 17,  bproof_2 = 0
		}
	},

	lieutenant = {
		male = {
			tshirt_1 = 20,  tshirt_2 = 0,
			torso_1 = 24,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 4,	    arms_2 = 0,
			pants_1 = 31,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 5,	glasses_2 = 0,
			bproof_1 = 33,  bproof_2 = 0
		},
		female = {
			tshirt_1 = 68,  tshirt_2 = 0,
			torso_1 = 166,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 7,	    arms_2 = 0,
			pants_1 = 88,   pants_2 = 2,
			shoes_1 = 0,    shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 21,	glasses_2 = 0,
			bproof_1 = 17,  bproof_2 = 0
		}
	},

	boss = {
		male = {
			tshirt_1 = 20,  tshirt_2 = 0,
			torso_1 = 24,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 4,	    arms_2 = 0,
			pants_1 = 31,   pants_2 = 0,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 5,	glasses_2 = 0,
			bproof_1 = 33,  bproof_2 = 0
		},
		female = {
			tshirt_1 = 68,  tshirt_2 = 0,
			torso_1 = 166,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 7,	    arms_2 = 0,
			pants_1 = 88,   pants_2 = 2,
			shoes_1 = 0,    shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 0,    mask_2 = 0,
			glasses_1 = 21,	glasses_2 = 0,
			bproof_1 = 17,  bproof_2 = 0
		}
	},

----------------------------CUSTOMIZADOS----------------------------------------------------------------------	
	moto_wear = {
		male = {
			tshirt_1 = 15,  tshirt_2 = 0,
			torso_1 = 239,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 114,	arms_2 = 3,
			pants_1 = 101,   pants_2 = 3,
			shoes_1 = 62,   shoes_2 = 3,
			helmet_1 = 16,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			glasses_1 = 25,	glasses_2 = 1,
			bproof_1 = 50,  bproof_2 = 0
		},
		female = {
			tshirt_1 = 8,  tshirt_2 = 0,
			torso_1 = 266,   torso_2 = 1,
			decals_1 = 0,   decals_2 = 0,
			arms = 3, 	arms_2 = 0,
			pants_1 = 67,   pants_2 = 1,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 74,  helmet_2 = 0,
			chain_1 = -1,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			glasses_1 = 21,	glasses_2 = 0,
			bproof_1 = 17,  bproof_2 = 0
		}
	},

	swat_wear = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 1,
			torso_1 = 197,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 21,    arms_2 = 0,
			pants_1 = 65,   pants_2 = 2,
			shoes_1 = 40,   shoes_2 = 0,
			helmet_1 = 43,  helmet_2 = 2,
			chain_1 = -1,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0,
			mask_1 = 107,    mask_2 = 0,
			glasses_1 = 25,	glasses_2 = 2,
			bproof_1 = 44,  bproof_2 = 0
		},
		female = {
			tshirt_1 = 16,  tshirt_2 = 0,
			torso_1 = 339,   torso_2 = 4,
			decals_1 = 0,   decals_2 = 0,
			arms = 18,	arms_2 = 0,
			pants_1 = 66,   pants_2 = 2,
			shoes_1 = 50,   shoes_2 = 0,
			helmet_1 = 44,  helmet_2 = 2,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 0,     ears_2 = 0,
			mask_1 = 96,    mask_2 = 0,
			glasses_1 = 27,	glasses_2 = 1,
			bproof_1 = 7,  bproof_2 = 0
		}
	}
}

----------------- VEHICULOS ---------------------------------------

--Police Car Garage:
Config.CarZones = {
	PoliceCarGarage = {
		Pos = {
	--		{x = 458.84,  y = -993.28, z = 25.72}
	--		{x = 438.92,  y = -1024.96, z = 28.76}
		}
	}
}

--Police Heli Garage:
Config.HeliZones = {
	PoliceHeliGarage = {
		Pos = {
			{x = 448.65,  y = -981.25, z = -143.69},
			{x = 632.216,  y = -156.131, z = -154.037}
		}
	}
}

--Police Boat Garage:
Config.BoatZones = {
	PoliceBoatGarage = {
		Pos = {
			{x = 1538.69,  y = 3901.5, z = 30.35},
			{x = 2000.42,  y = 4500, z = 33.437}
		}
	}
}

--Police Car Garage Blip Settings:
Config.CarGarageSprite = 357
Config.CarGarageDisplay = 4
Config.CarGarageScale = 0.65
Config.CarGarageColour = 38
Config.CarGarageName = "Garaje de la policía"
Config.EnableCarGarageBlip = false

-- Police Heli Garage Blip Settings:
Config.HeliGarageSprite = 43
Config.HeliGarageDisplay = 4
Config.HeliGarageScale = 0.65
Config.HeliGarageColour = 38
Config.HeliGarageName = "Helicóptero de la policía"
Config.EnableHeliGarageBlip = false

-- Police Boat Garage Blip Settings:
Config.BoatGarageSprite = 427
Config.BoatGarageDisplay = 4
Config.BoatGarageScale = 0.65
Config.BoatGarageColour = 38
Config.BoatGarageName = "Barco de la policía"
Config.EnableBoatGarageBlip = false

-- Police Car Garage Marker Settings:
Config.PoliceCarMarker = 27 												-- marker type
Config.PoliceCarMarkerColor = { r = 50, g = 50, b = 204, a = 100 } 			-- rgba color of the marker
Config.PoliceCarMarkerScale = { x = 1.5, y = 1.5, z = 1.0 }  				-- the scale for the marker on the x, y and z axis
Config.CarDraw3DText = "Presione [E] para abrir el garaje."			-- set your desired text here

-- Police Heli Garage Marker Settings:
Config.PoliceHeliMarker = 27 												-- marker type
Config.PoliceHeliMarkerColor = { r = 50, g = 50, b = 204, a = 100 } 		-- rgba color of the marker
Config.PoliceHeliMarkerScale = { x = 5.5, y = 5.5, z = 1.0 }  				-- the scale for the marker on the x, y and z axis
Config.HeliDraw3DText = "Presione [E] para abrir el helipuerto."		-- set your desired text here

-- Police Boat Garage Marker Settings:
Config.PoliceBoatMarker = 27 												-- marker type
Config.PoliceBoatMarkerColor = { r = 50, g = 50, b = 204, a = 100 } 		-- rgba color of the marker
Config.PoliceBoatMarkerScale = { x = 3.0, y = 3.0, z = 1.0 }  				-- the scale for the marker on the x, y and z axis
Config.BoatDraw3DText = "Presione [E] para abrir el puerto."		-- set your desired text here


-- Police Cars:
Config.PoliceVehicles = {
		{ model = '14charger', label = 'Charger 2014'},
		{ model = '11caprice', label = 'Caprice 2011'},
		{ model = '16explorer', label = 'Explorer 2016'},
		{ model = '18charger', label = 'Charger 2018'},
		{ model = 'newvic', label = 'NewVic'},
		{ model = '19durango', label = 'Durango 2019'}
}

-- Police Helicopters:
Config.PoliceHelicopters = {
	{ model = 'polmav', label = 'Helicóptero de la policía', livery = 1, price = 0 }
}

-- Police Boats:
Config.PoliceBoats = {
	{ model = 'predator', label = 'Depredador policial', livery = 0, price = 0 }
}

-- Commands:
Config.RepairCommand = 'reparar'
Config.CleanCommand = 'limpieza'

-- Menu Labels & Titles:
Config.LabelStoreVeh = "Guardar vehiculo de servicio"
Config.LabelGetVeh = "Tomar vehiculo de servicio"
Config.LabelPrimaryCol = "Primario"
Config.LabelSecondaryCol = "Secundario"
Config.LabelExtra = "Extra"
Config.LabelLivery = "Livery"
Config.TitlePoliceGarage = "Garaje de la policia"
Config.TitlePoliceExtra = "Extra"
Config.TitlePoliceLivery = "Livery"
Config.TitleColorType = "Tipo de color"
Config.TitleValues = "Valor"

-- ESX.ShowNotifications:
Config.VehicleParked = "¡El vehículo está en el garaje!"
Config.NoVehicleNearby = "¡No tienes vehículo!"
Config.CarOutFromPolGar = "¡Coche retirado del garaje!"
Config.HeliOutFromPolGar = "¡Helicóptero sacado del garaje!"
Config.BoatOutFromPolGar = "Sacaste un ~b~Bote~s~ desde ~y~Garaje del barco de la policía~s~!"
Config.VehRepNotify = "Tu ~b~vehículo~s~ está siendo ~y~reparado~s~, espere por favor!"
Config.VehRepDoneNotify = "Tu ~b~vehículo~s~ ha sido ~y~reparado~s~!"
Config.VehCleanNotify = "Tu ~b~vehículo~s~ está siendo ~y~limpiado~s~, espere por favor!"
Config.VehCleanDoneNotify = "Tu ~b~vehículo~s~ ha sido ~y~limpiado~s~!"

-- ProgressBars text
Config.Progress1 = "REPARACIÓN DE AUTOS"
Config.Progress2 = "LIMPIEZA DE COCHES"

-- ProgressBar Timers, in seconds:
Config.RepairTime = 5					-- time to repair vehicle
Config.CleanTime = 3.5					-- time to clean vehicle

Config.VehicleLoadText = "Espere a que aparezca el vehículo"			-- text on screen when vehicle model is being loaded

-- Distance from garage marker to the point where /fix and /clean shall work
Config.Distance = 60

Config.DrawDistance      = 10.0
Config.TriggerDistance 	 = 3.0
Config.Marker 			 = {Type = 27, r = 0, g = 127, b = 22}

Config.Colors = {
	{ label = _U('black'), value = 'black'},
	{ label = _U('white'), value = 'white'},
	{ label = _U('grey'), value = 'grey'},
	{ label = _U('red'), value = 'red'},
	{ label = _U('pink'), value = 'pink'},
	{ label = _U('blue'), value = 'blue'},
	{ label = _U('yellow'), value = 'yellow'},
	{ label = _U('green'), value = 'green'},
	{ label = _U('orange'), value = 'orange'},
	{ label = _U('brown'), value = 'brown'},
	{ label = _U('purple'), value = 'purple'},
	{ label = _U('chrome'), value = 'chrome'},
	{ label = _U('gold'), value = 'gold'}
}

function GetColors(color)
	local colors = {}
	if color == 'black' then
		colors = {
			{ index = 0, label = _U('black')},
			{ index = 1, label = _U('graphite')},
			{ index = 2, label = _U('black_metallic')},
			{ index = 3, label = _U('caststeel')},
			{ index = 11, label = _U('black_anth')},
			{ index = 12, label = _U('matteblack')},
			{ index = 15, label = _U('darknight')},
			{ index = 16, label = _U('deepblack')},
			{ index = 21, label = _U('oil')},
			{ index = 147, label = _U('carbon')}
		}
	elseif color == 'white' then
		colors = {
			{ index = 106, label = _U('vanilla')},
			{ index = 107, label = _U('creme')},
			{ index = 111, label = _U('white')},
			{ index = 112, label = _U('polarwhite')},
			{ index = 113, label = _U('beige')},
			{ index = 121, label = _U('mattewhite')},
			{ index = 122, label = _U('snow')},
			{ index = 131, label = _U('cotton')},
			{ index = 132, label = _U('alabaster')},
			{ index = 134, label = _U('purewhite')}
		}
	elseif color == 'grey' then
		colors = {
			{ index = 4, label = _U('silver')},
			{ index = 5, label = _U('metallicgrey')},
			{ index = 6, label = _U('laminatedsteel')},
			{ index = 7, label = _U('darkgray')},
			{ index = 8, label = _U('rockygray')},
			{ index = 9, label = _U('graynight')},
			{ index = 10, label = _U('aluminum')},
			{ index = 13, label = _U('graymat')},
			{ index = 14, label = _U('lightgrey')},
			{ index = 17, label = _U('asphaltgray')},
			{ index = 18, label = _U('grayconcrete')},
			{ index = 19, label = _U('darksilver')},
			{ index = 20, label = _U('magnesite')},
			{ index = 22, label = _U('nickel')},
			{ index = 23, label = _U('zinc')},
			{ index = 24, label = _U('dolomite')},
			{ index = 25, label = _U('bluesilver')},
			{ index = 26, label = _U('titanium')},
			{ index = 66, label = _U('steelblue')},
			{ index = 93, label = _U('champagne')},
			{ index = 144, label = _U('grayhunter')},
			{ index = 156, label = _U('grey')}
		}
	elseif color == 'red' then
		colors = {
			{ index = 27, label = _U('red')},
			{ index = 28, label = _U('torino_red')},
			{ index = 29, label = _U('poppy')},
			{ index = 30, label = _U('copper_red')},
			{ index = 31, label = _U('cardinal')},
			{ index = 32, label = _U('brick')},
			{ index = 33, label = _U('garnet')},
			{ index = 34, label = _U('cabernet')},
			{ index = 35, label = _U('candy')},
			{ index = 39, label = _U('matte_red')},
			{ index = 40, label = _U('dark_red')},
			{ index = 43, label = _U('red_pulp')},
			{ index = 44, label = _U('bril_red')},
			{ index = 46, label = _U('pale_red')},
			{ index = 143, label = _U('wine_red')},
			{ index = 150, label = _U('volcano')}
		}
	elseif color == 'pink' then
		colors = {
			{ index = 135, label = _U('electricpink')},
			{ index = 136, label = _U('salmon')},
			{ index = 137, label = _U('sugarplum')}
		}
	elseif color == 'blue' then
		colors = {
			{ index = 54, label = _U('topaz')},
			{ index = 60, label = _U('light_blue')},
			{ index = 61, label = _U('galaxy_blue')},
			{ index = 62, label = _U('dark_blue')},
			{ index = 63, label = _U('azure')},
			{ index = 64, label = _U('navy_blue')},
			{ index = 65, label = _U('lapis')},
			{ index = 67, label = _U('blue_diamond')},
			{ index = 68, label = _U('surfer')},
			{ index = 69, label = _U('pastel_blue')},
			{ index = 70, label = _U('celeste_blue')},
			{ index = 73, label = _U('rally_blue')},
			{ index = 74, label = _U('blue_paradise')},
			{ index = 75, label = _U('blue_night')},
			{ index = 77, label = _U('cyan_blue')},
			{ index = 78, label = _U('cobalt')},
			{ index = 79, label = _U('electric_blue')},
			{ index = 80, label = _U('horizon_blue')},
			{ index = 82, label = _U('metallic_blue')},
			{ index = 83, label = _U('aquamarine')},
			{ index = 84, label = _U('blue_agathe')},
			{ index = 85, label = _U('zirconium')},
			{ index = 86, label = _U('spinel')},
			{ index = 87, label = _U('tourmaline')},
			{ index = 127, label = _U('paradise')},
			{ index = 140, label = _U('bubble_gum')},
			{ index = 141, label = _U('midnight_blue')},
			{ index = 146, label = _U('forbidden_blue')},
			{ index = 157, label = _U('glacier_blue')}
		}
	elseif color == 'yellow' then
		colors = {
			{ index = 42, label = _U('yellow')},
			{ index = 88, label = _U('wheat')},
			{ index = 89, label = _U('raceyellow')},
			{ index = 91, label = _U('paleyellow')},
			{ index = 126, label = _U('lightyellow')}
		}
	elseif color == 'green' then
		colors = {
			{ index = 49, label = _U('met_dark_green')},
			{ index = 50, label = _U('rally_green')},
			{ index = 51, label = _U('pine_green')},
			{ index = 52, label = _U('olive_green')},
			{ index = 53, label = _U('light_green')},
			{ index = 55, label = _U('lime_green')},
			{ index = 56, label = _U('forest_green')},
			{ index = 57, label = _U('lawn_green')},
			{ index = 58, label = _U('imperial_green')},
			{ index = 59, label = _U('green_bottle')},
			{ index = 92, label = _U('citrus_green')},
			{ index = 125, label = _U('green_anis')},
			{ index = 128, label = _U('khaki')},
			{ index = 133, label = _U('army_green')},
			{ index = 151, label = _U('dark_green')},
			{ index = 152, label = _U('hunter_green')},
			{ index = 155, label = _U('matte_foilage_green')}
		}
	elseif color == 'orange' then
		colors = {
			{ index = 36, label = _U('tangerine')},
			{ index = 38, label = _U('orange')},
			{ index = 41, label = _U('matteorange')},
			{ index = 123, label = _U('lightorange')},
			{ index = 124, label = _U('peach')},
			{ index = 130, label = _U('pumpkin')},
			{ index = 138, label = _U('orangelambo')}
		}
	elseif color == 'brown' then
		colors = {
			{ index = 45, label = _U('copper')},
			{ index = 47, label = _U('lightbrown')},
			{ index = 48, label = _U('darkbrown')},
			{ index = 90, label = _U('bronze')},
			{ index = 94, label = _U('brownmetallic')},
			{ index = 95, label = _U('Expresso')},
			{ index = 96, label = _U('chocolate')},
			{ index = 97, label = _U('terracotta')},
			{ index = 98, label = _U('marble')},
			{ index = 99, label = _U('sand')},
			{ index = 100, label = _U('sepia')},
			{ index = 101, label = _U('bison')},
			{ index = 102, label = _U('palm')},
			{ index = 103, label = _U('caramel')},
			{ index = 104, label = _U('rust')},
			{ index = 105, label = _U('chestnut')},
			{ index = 108, label = _U('brown')},
			{ index = 109, label = _U('hazelnut')},
			{ index = 110, label = _U('shell')},
			{ index = 114, label = _U('mahogany')},
			{ index = 115, label = _U('cauldron')},
			{ index = 116, label = _U('blond')},
			{ index = 129, label = _U('gravel')},
			{ index = 153, label = _U('darkearth')},
			{ index = 154, label = _U('desert')}
		}
	elseif color == 'purple' then
		colors = {
			{ index = 71, label = _U('indigo')},
			{ index = 72, label = _U('deeppurple')},
			{ index = 76, label = _U('darkviolet')},
			{ index = 81, label = _U('amethyst')},
			{ index = 142, label = _U('mysticalviolet')},
			{ index = 145, label = _U('purplemetallic')},
			{ index = 148, label = _U('matteviolet')},
			{ index = 149, label = _U('mattedeeppurple')}
		}
	elseif color == 'chrome' then
		colors = {
			{ index = 117, label = _U('brushedchrome')},
			{ index = 118, label = _U('blackchrome')},
			{ index = 119, label = _U('brushedaluminum')},
			{ index = 120, label = _U('chrome')}
		}
	elseif color == 'gold' then
		colors = {
			{ index = 37, label = _U('gold')},
			{ index = 158, label = _U('puregold')},
			{ index = 159, label = _U('brushedgold')},
			{ index = 160, label = _U('lightgold')}
		}
	end
	return colors
end
