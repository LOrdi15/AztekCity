Config = {
    Locker = {X= 537.5752, Y= -1651.2780, Z= 29.2629}, -- Position of the locker
    Uniforms = { -- Work uniforms (Make {} for none)
        Male= {
            tshirt_1 = 111,  tshirt_2 = 1,
			torso_1 = 173,   torso_2 = 1,
			decals_1 = 0,   decals_2 = 0,
			arms = 178,
			pants_1 = 75,   pants_2 = 1,
			shoes_1 = 63,   shoes_2 = 0,
            helmet_1 = 159,  helmet_2 = 2,
            mask_1 = 0,     emask_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0
        },
        FeMale= {
            tshirt_1 = 140,  tshirt_2 = 0,
			torso_1 = 172,   torso_2 = 1,
			decals_1 = 0,   decals_2 = 0,
			arms = 23,
			pants_1 = 92,   pants_2 = 1,
			shoes_1 = 75,   shoes_2 = 0,
            helmet_1 = 154,  helmet_2 = 2,
            mask_1 = -1,     emask_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = -1,     ears_2 = 0
        }
    },

    Garage = {X= 543.1700, Y= -1648.3239, Z= 28.49}, -- Position of the garage
    VehicleSpawn = {X= 544.2, Y= -1643.83, Z= 28.23, Heading= 136.84}, -- Position where the vehicle will spawn 
    VehicleDelete = {X= 546.3815, Y= -1641.1971, Z= 28.30}, -- Position where the vehicle can despawn

    Vehicles = { -- All vehicles that can be spawned from the menu
        {Name= "Auto Electricista", SpawnName= "dilettante2"},
        
    },
    LicensePlate = "Tech", -- Make "" for random text

    BlipName = "Empresa de Luz", -- Name of the marker on the map
    JobBlipName = "Empresa de Luz", -- Name of the marker on the map

    MoneyType = Bank, -- True= Cash | False= Bank
    MoneyAmount = 500, -- Money you get for completing 1 job

    Translation = "EN", -- Translation to use

    Jobs = { -- Positions of available jobs
        {X= 176.78, Y= 575.98, Z= 184.73},
        {X= -440.60, Y= 292.38, Z= 83.23},
        {X= -518.66, Y= -48.62, Z= 42.11},
        {X= 434.40, Y= -659.66, Z= 28.81},
        {X= 465.08, Y= -1059.32, Z= 29.21},
        {X= 468.32, Y= -1059.04, Z= 29.21},
        {X= 471.44, Y= -1058.73, Z= 29.21},
        {X= -44.55, Y= -1293.64, Z= 29.16},
        {X= 81.62, Y= -1829.34, Z= 25.77},
        {X= -624.53, Y= -1608.98, Z= 26.90},
        {X= -1172.07, Y= -1384.90, Z= 4.92},
        {X= -1162.77, Y= -1550.97, Z= 4.39},
        {X= -1147.1, Y= -1563.82, Z= 4.41},
        {X= -1061.89, Y= -1641.10, Z= 4.49},
        {X= -1273.11, Y= -1091.96, Z= 7.81},
        {X= -1255.38, Y= -1151.51, Z= 7.59},
        {X= -1270.68, Y= -1369.25, Z= 4.30},
        {X= 1440.90, Y= 1133.75, Z= 114.32},
        {X= 1484.40, Y= 1103.48, Z= 114.33},
        {X= 809.31, Y= 2172.74, Z= 52.32},
        {X= 979.62, Y= 2716.01, Z= 39.50},
        {X= 1094.18, Y= 2654.2, Z= 37.97},
        {X= 1153.85, Y= 2649.87, Z= 38.0},
        {X= 1205.13, Y= 2709.5, Z= 38.0},
        {X= 1234.18, Y= 2733.87, Z= 38.0},
        {X= 1777.56, Y= 3320.36, Z= 41.43},
        {X= 1687.37, Y= 3593.58, Z= 35.59},
        {X= 1986.64, Y= 3786.64, Z= 32.18},
        {X= 2276.47, Y= 3759.19, Z= 38.44},
        {X= 2274.98, Y= 3758.03, Z= 38.43},
        {X= 2269.31, Y= 3756.6, Z= 38.42},
        {X= 2454.80, Y= 3855.37, Z= 39.05},
        {X= 2519.2, Y= 4113.56, Z= 38.63},
        {X= 2525.48, Y= 4126.91, Z= 38.63},
        {X= 2475.3, Y= 4113.55, Z= 38.11},
        {X= 1349.87, Y= -1550.39, Z= 53.90},
        {X= 1216.13, Y= -1531.09, Z= 34.90},
        {X= 1212.49, Y= -1530.31, Z= 34.90},
        {X= 1195.41, Y= -1525.53, Z= 34.69},
        {X= 1191.74, Y= -1529.42, Z= 34.69},
        {X= 1187.94, Y= -1528.88, Z= 34.69},
        {X= 988.08, Y= -1399.81, Z= 31.51},
        {X= 771.33, Y= -1315.70, Z= 26.22},
        {X= 319.28, Y= -995.84, Z= 29.25},
        {X= -28.45, Y= -620.91, Z= 35.46},
        {X= -40.59, Y= -619.26, Z= 35.09},
        {X= -261.30, Y= -1189.07, Z= 23.54},
        {X= -361.15, Y= -1857.89, Z= 20.52},
        {X= -1057.61, Y= -2222.54, Z= 9.07},
        {X= -1068.03, Y= -2006.98, Z= 14.47},
        {X= -819.34, Y= -2105.82, Z= 8.96},
        {X= -657.31, Y= -2364.94, Z= 13.94}
    },

    TranslationList = { -- List of all translation which you car choose
        ["EN"] = {
            ["LOCKER_HELP"] = "Presiona ~INPUT_CONTEXT~ para abrir el locker!",
            ["LOCKER_MENU"] = "Locker Electricista",
            ["WORK_CLOTHES"] = "Uniforme de trabajo",
            ["NORMAL_CLOTHES"] = "Ropa de civil",

            ["GARAGE_HELP"] = "Presiona ~INPUT_CONTEXT~ para abrir el garaje!",
            ["GARAGE_MENU"] = "Garaje Electricista",
            ["GARAGE_PROBLEM"] = "~r~ Algo salio mal al abrir el garaje. (Stopped to prevent crash!)",
            
            ["DELETE_HELP"] = "Presiona ~INPUT_CONTEXT~ para guardar el vehiculo!",

            ["MENU_HELP"] = "Presiona ~INPUT_SELECT_CHARACTER_FRANKLIN~ para abrir tu tablet!",
            ["MENU_MENU"] = "Menu",
            ["MENU_NEW"] = "Nueva Tarea",
            ["MENU_CREATED"] = "~g~ Tarea Pendiente Asignada!",
            ["MENU_CANCEL"] = "Cancelar Tarea Asignada",
            ["MENU_CANCELED"] = "~g~ Cancelaste correctamente la tarea!",
            ["MENU_ALREADY"] = "~r~ Ya estas realizando una tarea! Primero cancela o termina.",
            ["MENU_NONE"] = "~r~ No tienes tareas activas!",

            ["JOB_HELP"] = "Presiona ~INPUT_CONTEXT~ para revisar la caja!",
            ["JOB_DONE"] = "~g~ Solucionaste el problema. Ganaste ~b~$100,-~g~ por el servicio!"
        },
        ["NL"] = {
            ["LOCKER_HELP"] = "Druk op ~INPUT_CONTEXT~ om de kleding kast te openen!",
            ["LOCKER_MENU"] = "Kleding Menu",
            ["WORK_CLOTHES"] = "Werk Kleding",
            ["NORMAL_CLOTHES"] = "Normale Kleding",

            ["GARAGE_HELP"] = "Druk op ~INPUT_CONTEXT~ om de garage te openen!",
            ["GARAGE_MENU"] = "Garage Menu",
            ["GARAGE_PROBLEM"] = "~r~ Er is iets fout gegaan tijdens het spawnen van het voertuig. (Gestopt om een crash te voorkomen!)",
            
            ["DELETE_HELP"] = "Druk op ~INPUT_CONTEXT~ om je voertuig je verwijderen!",

            ["MENU_HELP"] = "Druk op ~INPUT_SELECT_CHARACTER_FRANKLIN~ om je menu te openen!",
            ["MENU_MENU"] = "Menu",
            ["MENU_NEW"] = "Nieuwe opdracht",
            ["MENU_CREATED"] = "~g~ Succesvol een nieuw opdracht gemaakt!",
            ["MENU_CANCEL"] = "Beëindig huidige opdracht",
            ["MENU_CANCELED"] = "~g~ Opdracht succesvol beëindigd!",
            ["MENU_ALREADY"] = "~r~ U bent als bezig met een opdracht! U moet deze eerst beëindigen.",
            ["MENU_NONE"] = "~r~ U heeft geen huidige opdracht!",

            ["JOB_HELP"] = "Druk op ~INPUT_CONTEXT~ om een kijkje te nemen!",
            ["JOB_DONE"] = "~g~ Het probleem is succesvol op gelost. Je hebt er ~b~€100,-~g~ voor gekregen!"
        }
    }
}

--[[
  _____   _                                 _   _   _
 |_   _| (_)  _ __    _   _   ___          | \ | | | |
   | |   | | | '_ \  | | | | / __|         |  \| | | |    
   | |   | | | | | | | |_| | \__ \         | |\  | | |___ 
   |_|   |_| |_| |_|  \__,_| |___/  _____  |_| \_| |_____|
                                   |_____|
]]--
