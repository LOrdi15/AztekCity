ESX = nil
Citizen.CreateThread(function()
    while true do
        Wait(5)
        if ESX ~= nil then
       
        else
            ESX = nil
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        end
    end
end)

local isJudge = false
local isPolice = false
local isMedic = false
local isDoctor = false
local isNews = false
local isInstructorMode = false
local myJob = "unemployed"
local isHandcuffed = false
local isHandcuffedAndWalking = false
local hasOxygenTankOn = false
local gangNum = 0
local cuffStates = {}
 
rootMenuConfig =  {
    {
        id = "general",--Listo
        displayName = "Otros",
        icon = "#globe-europe",
        enableMenu = function()
		return (not isDead and not IsPedInAnyVehicle(PlayerPedId(), false))
        end,
        subMenus = {"general:emotes","kimlikgor", "kimlikgoster", "ehliyetgor", "ehliyetgoster"}
    },

    {
        id = "general",--Listo
        displayName = "Control Vehiculo",
        icon = "#vehicle-options-vehicle",
        enableMenu = function()
		return (not isDead and not IsPedInAnyVehicle(PlayerPedId(), false))
        end,
        subMenus = {"general:dar-llaves-temporal", "general:dar-llaves-permanentes", "general:quitarllaves"}
    },

  --  {
    --    id = "general2",--Listo
       -- displayName = "Extras",
      --  icon = "#globe-europe",
       -- enableMenu = function()
		--return (not isDead and not IsPedInAnyVehicle(PlayerPedId(), false))
     --   end,
   --     subMenus = {}
  --  },

    -- {
    --     id = "general",--Listo
    --     displayName = "Personal",
    --     icon = "#globe-europe",
    --     enableMenu = function()
	-- 	return (not isDead and not IsPedInAnyVehicle(PlayerPedId(), false))
    --     end,
    --     subMenus = {"general:reloj"}
    -- },


  --  {
    --    id = "general",--Listo
       -- displayName = "Acciones Rapidas",
      --  icon = "#globe-europe",
    --    enableMenu = function()   --Activar si ocupo mas slots
--		return (not isDead and not IsPedInAnyVehicle(PlayerPedId(), false))
  --      end,
     ---   subMenus = {"general:reloj", ""}
   -- },

    {
        id = "animations",--Listo
        displayName = "Emotes",
        icon = "#general-emotes",
        enableMenu = function()
            return (not isDead and IsPedInAnyVehicle(PlayerPedId(), false))
        end,
		 subMenus = { "general:emotes2"}
        
    },	
       
    {
        id = "blips",--Listo
        displayName = "GPS",
        icon = "#blips",
        enableMenu = function()
            return (not isDead and IsPedInAnyVehicle(PlayerPedId(), false))
        end,
         subMenus = { "blips:gasstations", "blips:barbershop", "fk:deleteblip", "blips:tattooshop", "fk:karakol", "fk:hastane", "fk:galeri", "fk:motel"}
    },	   
    {
        id = "animations",--Listo
        displayName = "Estilos para caminar",
        icon = "#walking",
        enableMenu = function()
         
            return (not isDead and not IsPedInAnyVehicle(PlayerPedId(), false))
        end,
        subMenus = { "animations:brave", "animations:hurry", "animations:business", "animations:tipsy", "animations:injured","animations:tough", "animations:default", "animations:hobo", "animations:money", "animations:swagger", "animations:shady", "animations:maneater", "animations:chichi", "animations:sassy", "animations:sad", "animations:posh", "animations:alien" }
    },
	-- {
    --     id = "propmenu",--Listo
    --     displayName = "Menú Objeto",
    --     icon = "#blips-garages",
    --     enableMenu = function()
         
    --         return (not isDead and not IsPedInAnyVehicle(PlayerPedId(), false))
    --     end,
    --     subMenus = { "tsandalye", "tsandalyesil", "sedye", "sedyesil" ,"bombox"}
    -- },
    {
        id = "expressions",
        displayName = "Expresiones",
        icon = "#expressionss",
        enableMenu = function()
         
            return (not isDead and not IsPedInAnyVehicle(PlayerPedId(), false))
        end,
        subMenus = { "expressions:normal", "expressions:drunk", "expressions:angry", "expressions:dumb", "expressions:electrocuted", "expressions:grumpy", "expressions:happy", "expressions:injured", "expressions:joyful", "expressions:mouthbreather", "expressions:oneeye", "expressions:shocked", "expressions:sleeping", "expressions:smug", "expressions:speculative", "expressions:stressed", "expressions:sulking", "expressions:weird", "expressions:weird2"}
    },

    {
        id = "news",
        displayName = "News",
        icon = "#news",
        enableMenu = function()
            return (not isDead and isNews)
        end,
        subMenus = { "news:setCamera", "news:setMicrophone", "news:setBoom" }
    },

	
	{
        id = "general",
        displayName = "Documentacion",
        icon = "#globe-europe",
        enableMenu = function()
		return (not isDead and IsPedInAnyVehicle(PlayerPedId(), false))
        end,
        subMenus = {"kimlikgor", "kimlikgoster", "ehliyetgor", "ehliyetgoster"}
    },
	{
        id = "vehicle",
        displayName = "Operaciones de vehiculos",
        icon = "#vehicle-options-vehicle",
        functionName = "carcontrol:open",
        enableMenu = function()
            return (not isDead and IsPedInAnyVehicle(PlayerPedId(), false))
        end
    },


	
}

newSubMenus = {
    ['general:emotes'] = {
        title = "Emotes",
        icon = "#general-emotes",
        functionName = "dp:RecieveMenu"
    },
    ['general:dar-llaves-temporal'] = {
        title = "Dar Llaves Temporales",
        icon = "#llaves",
        functionName = "dar-llaves-temporales-menu-f3"
    },
    ['general:dar-llaves-permanentes'] = {
        title = "Dar Llaves Permanentes",
        icon = "#llaves",
        functionName = "dar-llaves-permanentes-menu-f3"
    },
    ['general:quitarllaves'] = {
        title = "Quitar Llaves",
        icon = "#llaves",
        functionName = "quitar-llaves-menu-f3"
    },
    -- ['general:reloj'] = {
    --     title = "Reloj HUD",
    --     icon = "#expressionss",
    --     functionName = "reloj:usar"
    -- },
    ['general:AskForTrain'] = {
        title = "Pedir Un Tren",
        icon = "#expressionss",
        functionName = "AskForTrain"
    },
	['general:emotes2'] = {
        title = "Emotes +18",
        icon = "#general-emotes",
        functionName = "loffe_animations:openMenu"
    },
    ['general:putinvehicle'] = {
        title = "Vehículo Seat",
        icon = "#general-put-in-veh",
        functionName = "police:forceEnter"
    },
    ['blips:gasstations'] = {
        title = "Gasolinera",
        icon = "#blips-gasstations",
        functionName = "ygx:togglegas"
    },    
    ['blips:garages'] = {
        title = "Garage",
        icon = "#blips-garages",
        functionName = "Garages:ToggleGarageBlip"
    },
	['fk:deleteblip'] = {
        title = "Eliminar Blips",
        icon = "#deleteblipz",
        functionName = "fk:deleteblip"
    }, 
    ['blips:barbershop'] = {
        title = "Barbero",
        icon = "#blips-barbershop",
        functionName = "ygx:togglebarber"
    }, 
    ['fk:karakol'] = {
        title = "Departamento",
        icon = "#police-action",
        functionName = "fk:karakol"
    },
    ['fk:hastane'] = {
        title = "Hospital",
        icon = "#medic",
        functionName = "fk:hastane"
    },
    ['fk:galeri'] = {
        title = "Galeria",
        icon = "#blips-garages",
        functionName = "fk:galeri"
    },	
    ['fk:motel'] = {
        title = "Motel",
        icon = "#blips-motel",
        functionName = "fk:motel"
    },	
    ['blips:tattooshop'] = {
        title = "Tatuador",
        icon = "#blips-tattooshop",
        functionName = "ygx:toggletattos"
    },	
    ['attach:prop_cs_cardbox_01'] = {
        title = "Caja",
        icon = "#animation-tough",
        functionName = "attach:prop_cs_cardbox_01"
    },
    ['xm_prop_x17_bag_01a'] = {
        title = "Monedero K",
        icon = "#animation-tough",
        functionName = "attach:xm_prop_x17_bag_01a"
    },
    ['tsandalye'] = {
        title = "Silla de ruedas",
        icon = "#chair-ambulance",
        functionName = "tsandalye"
    },	
	['tsandalyesil'] = {
        title = "Eliminar silla de ruedas",
        icon = "#chair-ambulance",
        functionName = "tsandalyesil"
    },	
	['sedye'] = {
        title = "Camilla",
        icon = "#bed-ambulance",
        functionName = "sedye"
    },	
	['sedyesil'] = {
        title = "Eliminar Camilla",
        icon = "#bed-ambulance",
        functionName = "sedyesil"
    },	
	['bombox'] = {
        title = "Eliminar Radio",
        icon = "#bombox",
        functionName = "bombox"
    },	

    ['general:unseatnearest'] = {
        title = "Desatar mas cercano",
        icon = "#general-unseat-nearest",
        functionName = "unseatPlayer"
    },     	
    ['animations:brave'] = {
        title = "Valiente",
        icon = "#animation-brave",
        functionName = "AnimSet:Brave"
    },
    ['animations:hurry'] = {
        title = "Rápido",
        icon = "#animation-hurry",
        functionName = "AnimSet:Hurry"
    },
    ['animations:business'] = {
        title = "Empresario",
        icon = "#animation-business",
        functionName = "AnimSet:Business"
    },
    ['animations:tipsy'] = {
        title = "Achispado",
        icon = "#animation-tipsy",
        functionName = "AnimSet:Tipsy"
    },
    ['animations:injured'] = {
        title = "Herido",
        icon = "#animation-injured",
        functionName = "AnimSet:Injured"
    },
    ['animations:tough'] = {
        title = "Dificil",
        icon = "#animation-tough",
        functionName = "AnimSet:ToughGuy"
    },
    ['animations:sassy'] = {
        title = "Descarado",
        icon = "#animation-sassy",
        functionName = "AnimSet:Sassy"
    },
    ['animations:sad'] = {
        title = "Triste",
        icon = "#animation-sad",
        functionName = "AnimSet:Sad"
    },
    ['animations:posh'] = {
        title = "Lujo",
        icon = "#animation-posh",
        functionName = "AnimSet:Posh"
    },
    ['animations:alien'] = {
        title = "Extraterrestre",
        icon = "#animation-alien",
        functionName = "AnimSet:Alien"
    },
    ['animations:nonchalant'] =
    {
        title = "Coincidencia",
        icon = "#animation-nonchalant",
        functionName = "AnimSet:NonChalant"
    },
    ['animations:hobo'] = {
        title = "Punk",
        icon = "#animation-hobo",
        functionName = "AnimSet:Hobo"
    },
    ['animations:money'] = {
        title = "Para",
        icon = "#animation-money",
        functionName = "AnimSet:Money"
    },
    ['animations:swagger'] = {
        title = "Finta",
        icon = "#animation-swagger",
        functionName = "AnimSet:Swagger"
    },
    ['animations:shady'] = {
        title = "Gangster",
        icon = "#animation-shady",
        functionName = "AnimSet:Shady"
    },
    ['animations:maneater'] = {
        title = "Curling",
        icon = "#animation-maneater",
        functionName = "AnimSet:ManEater"
    },
    ['animations:chichi'] = {
        title = "Llamativo",
        icon = "#animation-chichi",
        functionName = "AnimSet:ChiChi"
    },
    ['animations:default'] = {
        title = "Normal",
        icon = "#animation-default",
        functionName = "AnimSet:default"
    },
    ['mechanic:hijack'] = {
        title = "Abrir herramienta",
        icon = "#police-vehicle",
        functionName = "esx_mechanicjob:abrirmenu"
    },

    ['mechanic:clean'] = {
        title = "Limpiar",
        icon = "#police-vehicle",
        functionName = "st:mechclean"
    },
    ['mechanic:impound'] = {
        title = "Cheque",
        icon = "#police-vehicle",
        functionName = "st:menuimpound"
    },
    ['cuffs:cuff'] = {
        title = "Esposar",
        icon = "#cuffs-cuff",
        functionName = "st:handcuff"
    }, 
    ['cuffs:uncuff'] = {
        title = "Quitar Esposas",
        icon = "#cuffs-uncuff",
        functionName = "st:uncuff"
    },
    ['cuffs:unseat'] = {
        title = "Estar a pie",
        icon = "#cuffs-unseat-player",
        functionName = "esx_ambulancejob:pullOutVehicle"
    },

	
    ['cuffs:checkphone'] = {
        title = "Leer teléfono",
        icon = "#cuffs-check-phone",
        functionName = "police:checkPhone"
    },
    ['medic:revive'] = {
        title = "Mejorar",
        icon = "#medic-revive",
        functionName = "st:emsRevive"
    },
    ['medic:put'] = {
        title = "Saque a la persona del automóvil",
        icon = "#general-put-in-veh",
        functionName = "st:outv"
    },
	['attach:xm_prop_x17_bag_med_01a'] = {
        title = "Kit de primeros auxilios",
        icon = "#general-put-in-veh",
        functionName = "attach:xm_prop_x17_bag_med_01a"
    },
    ['medic:out'] = {
        title = "Poner a la persona en el coche",
        icon = "#general-unseat-nearest",
        functionName = "st:putv"
    },
    ['medic:heal'] = {
        title = "Tratar heridas menores",
        icon = "#medic-heal",
        functionName = "st:emssmallheal"
    },
    ['medic:bigheal'] = {
        title = "Tratar heridas importantes",
        icon = "#medic-heal",
        functionName = "st:emsbigheal"
    },
	['attach:xm_prop_smug_crate_s_medical'] = {
        title = "Botiquín de primeros auxilios",
        icon = "#medic-heal",
        functionName = "attach:xm_prop_smug_crate_s_medical"
    },
    ['police:escort'] = {
        title = "Moverse",
        icon = "#general-escort",
        functionName = "st:escort"
    },
    ['mdt:radialopen'] = {
        title = "Tableta de policía",
        icon = "#mdt",
        functionName = "mdt:radialopen"
    },	
    ['police:revive'] = {
        title = "Reanimar",
        icon = "#medic-revive",
        functionName = "st:pdrevive"
    },
    ['attach:prop_roadcone02a'] = {
        title = "Caballos",
        icon = "#general-put-in-veh",
        functionName = "attach:prop_roadcone02a"
    },
	['xm_prop_x17_bag_01a'] = { 
        title = "Bolso",
        icon = "#general-unseat-nearest",
        functionName = "attach:xm_prop_x17_bag_01a"
    },
    ['police:impound'] = {
        title = "Tire del vehículo",
        icon = "#police-vehicle",
        functionName = "st:menuimpound"
    },
    ['police:open'] = {
        title = "Abrir herramienta",
        icon = "#police-vehicle",
        functionName = "st:open"
    },
    ['police:community'] = {
        title = "Servicio comunitario",
        icon = "#animation-hobo",
        functionName = "st:kamu"
    },
    ['police:fine'] = {
        title = "Buscar arriba",
        icon = "#animation-business",
        functionName = "disc-inventoryhud:search"
    },
    ['ustara'] = {
        title = "Buscar arriba",
        icon = "#animation-business",
        functionName = "ustara"
    },
    ['police:cuff'] = {
        title = "Esposar",
        icon = "#cuffs-cuff",
        functionName = "police:cuffFromMenu"
    },
    ['police:checkbank'] = {
        title = "Banco de cheques",
        icon = "#police-check-bank",
        functionName = "police:checkBank"
    },
    ['police:checklicenses'] = {
        title = "Chequear Lincecia",
        icon = "#police-check-licenses",
        functionName = "police:checkLicenses"
    },
	['esx_policejob:putInVehicle'] = {
        title = "Pon a la persona en el coche",
        icon = "#general-put-in-veh",
        functionName = "esx_policejob:putInVehicle"
    },
	['esx_policejob:OutVehicle'] = {
        title = "Sacar a la persona del vehículo",
        icon = "#general-put-in-veh",
        functionName = "esx_policejob:OutVehicle"
    },
	['squad'] = {
        title = "Equipo",
        icon = "#general-put-in-veh",
        functionName = "squad"
    },	
	['hirsiz:OutVehicle'] = {
        title = "Sacar a la persona del vehículo",
        icon = "#general-put-in-veh",
        functionName = "hirsiz:OutVehicle"
    },	
	['hirsiz:putVehicle'] = {
        title = "Meter a la persona en el vehiculo",
        icon = "#general-put-in-veh",
        functionName = "hirsiz:OutVehicle"
    },		
    ['police:gsr'] = {
        title = "Prueba de pólvora",
        icon = "#police-action-gsr",
        functionName = "st:checkGSR"
    },
    ['st:ceza'] = {
        title = "Factura",
        icon = "#police-action-gsr",
        functionName = "st:ceza"
    },		
    ['police:getid'] = {
        title = "Facturas impagas",
        icon = "#police-vehicle-plate",
        functionName = "esx_policejob:odenmemisfatura"
    },
    ['esx_policejob:kelepce'] = {
        title = "Brazalete",
        icon = "#cuffs",
        functionName = "st:handcuff"
    },
	['esx_policejob:tasi'] = {
        title = "Moverse",
        icon = "#general-put-in-veh",
        functionName = "st:escort"
    },
    ['esx_policejob:kelepcecoz'] = {
        title = "Suéltelo",
        icon = "#cuffs-uncuff",
        functionName = "st:uncuff"
    },	
	['kimlikgor'] = {
        title = "Ver identidad",
        icon = "#kimlik",
        functionName = "kimlikgor"
    },	
    ['kimlikgoster'] = {
        title = "Muestre su identificación",
        icon = "#kimlik",
        functionName = "kimlikgoster"
    },
    ['ehliyetgor'] = {
        title = "Ver permiso de conducir",
        icon = "#ehliyet",
        functionName = "ehliyetgor"
    },	
    ['ehliyetgoster'] = {
        title = "Muestre su licencia de conducir",
        icon = "#ehliyet",
        functionName = "ehliyetgoster"
    },		
--[[     ['police:toggleradar'] = {
        title = "Toggle Radar",
        icon = "#police-vehicle-radar",
        functionName = "startSpeedo"
    }, ]]
--[[     ['police:frisk'] = {
        title = "Frisk",
        icon = "#police-action-frisk",
        functionName = "police:frisk"
    }, ]]
    ['judge:grantDriver'] = {
        title = "Concesión de controladores",
        icon = "#judge-licenses-grant-drivers",
        functionName = "police:grantDriver"
    }, 
    ['judge:grantBusiness'] = {
        title = "Grant Business",
        icon = "#judge-licenses-grant-business",
        functionName = "police:grantBusiness"
    },  
    ['judge:grantWeapon'] = {
        title = "Conceder arma",
        icon = "#judge-licenses-grant-weapon",
        functionName = "police:grantWeapon"
    },
    ['judge:grantHouse'] = {
        title = "Grant House",
        icon = "#judge-licenses-grant-house",
        functionName = "police:grantHouse"
    },
    ['judge:grantBar'] = {
        title = "Grant BAR",
        icon = "#judge-licenses-grant-bar",
        functionName = "police:grantBar"
    },
    ['judge:grantDA'] = {
        title = "Grant DA",
        icon = "#judge-licenses-grant-da",
        functionName = "police:grantDA"
    },
    ['judge:removeDriver'] = {
        title = "Remove Drivers",
        icon = "#judge-licenses-remove-drivers",
        functionName = "police:removeDriver"
    },
    ['judge:removeBusiness'] = {
        title = "Remove Business",
        icon = "#judge-licenses-remove-business",
        functionName = "police:removeBusiness"
    },
    ['judge:removeWeapon'] = {
        title = "Remove Weapon",
        icon = "#judge-licenses-remove-weapon",
        functionName = "police:removeWeapon"
    },
    ['judge:removeHouse'] = {
        title = "Remove House",
        icon = "#judge-licenses-remove-house",
        functionName = "police:removeHouse"
    },
    ['judge:removeBar'] = {
        title = "Remove BAR",
        icon = "#judge-licenses-remove-bar",
        functionName = "police:removeBar"
    },
    ['judge:removeDA'] = {
        title = "Remove DA",
        icon = "#judge-licenses-remove-da",
        functionName = "police:removeDA"
    },
    ['judge:denyWeapon'] = {
        title = "Deny Weapon",
        icon = "#judge-licenses-deny-weapon",
        functionName = "police:denyWeapon"
    },
    ['judge:denyDriver'] = {
        title = "Deny Drivers",
        icon = "#judge-licenses-deny-drivers",
        functionName = "police:denyDriver"
    },
    ['judge:denyBusiness'] = {
        title = "Deny Business",
        icon = "#judge-licenses-deny-business",
        functionName = "police:denyBusiness"
    },
    ['judge:denyHouse'] = {
        title = "Deny House",
        icon = "#judge-licenses-deny-house",
        functionName = "police:denyHouse"
    },
    ['news:setCamera'] = {
        title = "Camera",
        icon = "#news-job-news-camera",
        functionName = "camera:setCamera"
    },
    ['news:setMicrophone'] = {
        title = "Microphone",
        icon = "#news-job-news-microphone",
        functionName = "camera:setMic"
    },
    ['news:setBoom'] = {
        title = "Microphone Boom",
        icon = "#news-job-news-boom",
        functionName = "camera:setBoom"
    },
    ['weed:currentStatusServer'] = {
        title = "Request Status",
        icon = "#weed-cultivation-request-status",
        functionName = "weed:currentStatusServer"
    },   
    ['weed:weedCrate'] = {
        title = "Remove A Crate",
        icon = "#weed-cultivation-remove-a-crate",
        functionName = "weed:weedCrate"
    },
    ['cocaine:currentStatusServer'] = {
        title = "Request Status",
        icon = "#meth-manufacturing-request-status",
        functionName = "cocaine:currentStatusServer"
    },
    ['cocaine:methCrate'] = {
        title = "Quitar una caja",
        icon = "#meth-manufacturing-remove-a-crate",
        functionName = "cocaine:methCrate"
    },
    ["expressions:angry"] = {
        title="Enojado",
        icon="#expressions-angry",
        functionName = "expressions",
        functionParameters =  { "mood_angry_1" }
    },
    ["expressions:drunk"] = {
        title="Achispado",
        icon="#expressions-drunk",
        functionName = "expressions",
        functionParameters =  { "mood_drunk_1" }
    },
    ["expressions:dumb"] = {
        title="Tonto",
        icon="#expressions-dumb",
        functionName = "expressions",
        functionParameters =  { "pose_injured_1" }
    },
    ["expressions:electrocuted"] = {
        title="Electrificado",
        icon="#expressions-electrocuted",
        functionName = "expressions",
        functionParameters =  { "electrocuted_1" }
    },
    ["expressions:grumpy"] = {
        title="Gruñón",
        icon="#expressions-grumpy",
        functionName = "expressions", 
        functionParameters =  { "mood_drivefast_1" }
    },
    ["expressions:happy"] = {
        title="Feliz",
        icon="#expressions-happy",
        functionName = "expressions",
        functionParameters =  { "mood_happy_1" }
    },
    ["expressions:injured"] = {
        title="Herido",
        icon="#expressions-injured",
        functionName = "expressions",
        functionParameters =  { "mood_injured_1" }
    },
    ["expressions:joyful"] = {
        title="Gracioso",
        icon="#expressions-joyful",
        functionName = "expressions",
        functionParameters =  { "mood_dancing_low_1" }
    },
    ["expressions:mouthbreather"] = {
        title="Respiración por la boca",
        icon="#expressions-mouthbreather",
        functionName = "expressions",
        functionParameters = { "smoking_hold_1" }
    },
    ["expressions:normal"]  = {
        title="Normal",
        icon="#expressions-normal",
        functionName = "expressions:clear"
    },
    ["expressions:oneeye"]  = {
        title="Un ojo",
        icon="#expressions-oneeye",
        functionName = "expressions",
        functionParameters = { "pose_aiming_1" }
    },
    ["expressions:shocked"]  = {
        title="Conmocionado",
        icon="#expressions-shocked",
        functionName = "expressions",
        functionParameters = { "shocked_1" }
    },
    ["expressions:sleeping"]  = {
        title="Soñoliento",
        icon="#expressions-sleeping",
        functionName = "expressions",
        functionParameters = { "dead_1" }
    },
    ["expressions:smug"]  = {
        title="Engreído",
        icon="#expressions-smug",
        functionName = "expressions",
        functionParameters = { "mood_smug_1" }
    },
    ["expressions:speculative"]  = {
        title="Especulativo",
        icon="#expressions-speculative",
        functionName = "expressions",
        functionParameters = { "mood_aiming_1" }
    },
    ["expressions:stressed"]  = {
        title="Stress",
        icon="#expressions-stressed",
        functionName = "expressions",
        functionParameters = { "mood_stressed_1" }
    },
    ["expressions:sulking"]  = {
        title="Enfurruñado",
        icon="#expressions-sulking",
        functionName = "expressions",
        functionParameters = { "mood_sulk_1" },
    },
    ["expressions:weird"]  = {
        title="Raro",
        icon="#expressions-weird",
        functionName = "expressions",
        functionParameters = { "effort_2" }
    },
    ["expressions:weird2"]  = {
        title="Raro 2",
        icon="#expressions-weird2",
        functionName = "expressions",
        functionParameters = { "effort_3" }
    }
}

RegisterNetEvent("menu:setCuffState")
AddEventHandler("menu:setCuffState", function(pTargetId, pState)
    cuffStates[pTargetId] = pState
end)


RegisterNetEvent("isJudge")
AddEventHandler("isJudge", function()
    isJudge = true
end)

RegisterNetEvent("isJudgeOff")
AddEventHandler("isJudgeOff", function()
    isJudge = false
end)

RegisterNetEvent('pd:deathcheck')
AddEventHandler('pd:deathcheck', function()
    if not isDead then
        isDead = true
    else
        isDead = false
    end
end)

RegisterNetEvent("drivingInstructor:instructorToggle")
AddEventHandler("drivingInstructor:instructorToggle", function(mode)
    if myJob == "driving instructor" then
        isInstructorMode = mode
    end
end)

RegisterNetEvent("police:currentHandCuffedState")
AddEventHandler("police:currentHandCuffedState", function(pIsHandcuffed, pIsHandcuffedAndWalking)
    isHandcuffedAndWalking = pIsHandcuffedAndWalking
    isHandcuffed = pIsHandcuffed
end)

RegisterNetEvent("menu:hasOxygenTank")
AddEventHandler("menu:hasOxygenTank", function(pHasOxygenTank)
    hasOxygenTankOn = pHasOxygenTank
end)

RegisterNetEvent('enablegangmember')
AddEventHandler('enablegangmember', function(pGangNum)
    gangNum = pGangNum
end)

function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            players[#players+1]= i
        end
    end

    return players
end

function GetClosestPlayer()
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local closestPed = -1
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)
    if not IsPedInAnyVehicle(PlayerPedId(), false) then
        for index,value in ipairs(players) do
            local target = GetPlayerPed(value)
            if(target ~= ply) then
                local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
                local distance = #(vector3(targetCoords["x"], targetCoords["y"], targetCoords["z"]) - vector3(plyCoords["x"], plyCoords["y"], plyCoords["z"]))
                if(closestDistance == -1 or closestDistance > distance) and not IsPedInAnyVehicle(target, false) then
                    closestPlayer = value
                    closestPed = target
                    closestDistance = distance
                end
            end
        end
        return closestPlayer, closestDistance, closestPed
    end
end