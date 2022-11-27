ESX = nil
interactionDistance = 3.5
lockDistance = 25 
engineoff = false
saved = false
controlsave_bool = false
IsEngineOn = true
Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(5)
  end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)


--Fonksiyonlar--

RegisterNetEvent('attach:prop_roadcone02a')
AddEventHandler('attach:prop_roadcone02a', function()
    TriggerEvent("inrp_propsystem:attachItem","prop_roadcone02a")
	
end)

RegisterNetEvent('attach:xm_prop_x17_bag_med_01a') --xm_prop_x17_bag_med_01a
AddEventHandler('attach:xm_prop_x17_bag_med_01a', function()
    TriggerEvent("inrp_propsystem:attachItem","xm_prop_x17_bag_med_01a")
	
end)

RegisterNetEvent('attach:xm_prop_smug_crate_s_medical') --xm_prop_smug_crate_s_medical
AddEventHandler('attach:xm_prop_smug_crate_s_medical', function()
    TriggerEvent("inrp_propsystem:attachItem","xm_prop_smug_crate_s_medical")
	
end)


RegisterNetEvent("ygx:togglegas")
AddEventHandler("ygx:togglegas", function()
    DeleteWaypoint()

    local currentGasBlip = 0

	local coords = GetEntityCoords(PlayerPedId())
	local closest = 3000
	local closestCoords

	for k,v in pairs(GasStations) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
            closestCoords = v
        end
    end

    SetNewWaypoint(closestCoords)
    exports.pNotify:SendNotification({text = "En yakın benzin istasyonu GPS'inize işaretlendi.", type = "info", timeout = math.random(1000, 3000)})

end)

RegisterNetEvent("ygx:togglebarber")
AddEventHandler("ygx:togglebarber", function()
    DeleteWaypoint()
	local currentGasBlip = 0
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 10000
	local closestCoords1

	for k,v in pairs(BarberShops) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
			closestCoords1 = v
		end
    end
    
    SetNewWaypoint(closestCoords1)
    exports.pNotify:SendNotification({text = "En yakın berber GPS'inize işaretlendi.", type = "info", timeout = math.random(1000, 3000)})
end)

RegisterNetEvent("ygx:toggletattos")
AddEventHandler("ygx:toggletattos", function()
    DeleteWaypoint()
	local currentGasBlip = 0
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 10000
	local closestCoords2

	for k,v in pairs(TattoShops) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
			closestCoords2 = v
		end
    end
    
    SetNewWaypoint(closestCoords2)
    exports.pNotify:SendNotification({text = "En yakın dövmeci GPS'inize işaretlendi.", type = "info", timeout = math.random(1000, 3000)})
end)

RegisterNetEvent("fk:karakol")
AddEventHandler("fk:karakol", function()
    DeleteWaypoint()
	local currentGasBlip = 0
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 200000
	local closestCoords2

	for k,v in pairs(Karakol) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
			closestCoords2 = v
		end
    end
    
    SetNewWaypoint(closestCoords2)
    exports.pNotify:SendNotification({text = "Departman GPS'inize işaretlendi.", type = "info", timeout = math.random(1000, 3000)})
end)

RegisterNetEvent("fk:hastane")
AddEventHandler("fk:hastane", function()
    DeleteWaypoint()
	local currentGasBlip = 0
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 200000
	local closestCoords2

	for k,v in pairs(Hastane) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
			closestCoords2 = v
		end
    end
    
    SetNewWaypoint(closestCoords2)
    exports.pNotify:SendNotification({text = "Hastane GPS'inize işaretlendi.", type = "info", timeout = math.random(1000, 3000)})
end)

RegisterNetEvent("fk:galeri")
AddEventHandler("fk:galeri", function()
    DeleteWaypoint()
	local currentGasBlip = 0
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 200000
	local closestCoords2

	for k,v in pairs(Galeri) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
			closestCoords2 = v
		end
    end
    
    SetNewWaypoint(closestCoords2)
    exports.pNotify:SendNotification({text = "Galeri GPS'inize işaretlendi.", type = "info", timeout = math.random(1000, 3000)})
end)

RegisterNetEvent("fk:motel")
AddEventHandler("fk:motel", function()
    DeleteWaypoint()
	local currentGasBlip = 0
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 200000
	local closestCoords2

	for k,v in pairs(Motel) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
			closestCoords2 = v
		end
    end
    
    SetNewWaypoint(closestCoords2)
    exports.pNotify:SendNotification({text = "Motel GPS'inize işaretlendi.", type = "info", timeout = math.random(1000, 3000)})
end)
RegisterNetEvent("fk:deleteblip")
AddEventHandler("fk:deleteblip", function()
    DeleteWaypoint()

    exports.pNotify:SendNotification({text = "İşaretiniz kaldırıldı.", type = "info", timeout = math.random(1000, 3000)})
end)

RegisterNetEvent("ygx:togglegarage")
AddEventHandler("ygx:togglegarage", function()
    DeleteWaypoint()
	local currentGasBlip = 0
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 3000
	local closestCoords2

	for k,v in pairs(Garage) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)

		if dstcheck < closest then
			closest = dstcheck
			closestCoords2 = v
		end
    end
    
    SetNewWaypoint(closestCoords2)
    exports.pNotify:SendNotification({text = "En yakın garaj GPS'inize işaretlendi.", type = "info", timeout = math.random(1000, 3000)})
end)

TattoShops = {
	vector3(1322.6, -1651.9, 51.2),
	vector3(-1153.6, -1425.6, 4.9),
	vector3(322.1, 180.4, 103.5),
	vector3(-3170.0, 1075.0, 20.8),
	vector3(1864.6, 3747.7, 33.0),
	vector3(-293.7, 6200.0, 31.4)
}

Karakol = {
	vector3(431.91, -981.62, 30.71),
}

Galeri = {
	vector3(-45.24, -1098.05, 26.42),
}

Hastane = {
	vector3(292.1, -583.5, 43.19),
}

Motel = {
	vector3(326.51, -213.28, 54.07),
}

BarberShops = {
	vector3(-814.308, -183.823, 36.568),
	vector3(136.826, -1708.373, 28.291),
	vector3(-1282.604, -1116.757, 5.990),
	vector3(1931.513, 3729.671, 31.844),
	vector3(1212.840, -472.921, 65.208),
	vector3(-32.885, -152.319, 56.076),
	vector3(-278.077, 6228.463, 30.695),
}

GasStations = {
	vector3(49.4187, 2778.793, 58.043),
	vector3(263.894, 2606.463, 44.983),
	vector3(1039.958, 2671.134, 39.550),
	vector3(1207.260, 2660.175, 37.899),
	vector3(2539.685, 2594.192, 37.944),
	vector3(2679.858, 3263.946, 55.240),
	vector3(2005.055, 3773.887, 32.403),
	vector3(1687.156, 4929.392, 42.078),
	vector3(1701.314, 6416.028, 32.763),
	vector3(179.857, 6602.839, 31.868),
	vector3(-94.4619, 6419.594, 31.489),
	vector3(-2554.996, 2334.40, 33.078),
	vector3(-1800.375, 803.661, 138.651),
	vector3(-1437.622, -276.747, 46.207),
	vector3(-2096.243, -320.286, 13.168),
	vector3(-724.619, -935.1631, 19.213),
	vector3(-526.019, -1211.003, 18.184),
	vector3(-70.2148, -1761.792, 29.534),
	vector3(265.648, -1261.309, 29.292),
	vector3(819.653, -1028.846, 26.403),
	vector3(1208.951, -1402.567,35.224),
	vector3(1181.381, -330.847, 69.316),
	vector3(620.843, 269.100, 103.089),
	vector3(2581.321, 362.039, 108.468),
	vector3(176.631, -1562.025, 29.263),
	vector3(176.631, -1562.025, 29.263),
	vector3(-319.292, -1471.715, 30.549),
	vector3(1784.324, 3330.55, 41.253)
}

RegisterNetEvent('kiyafet1')
AddEventHandler('kiyafet1', function()
    TriggerEvent('hat')
end)

RegisterNetEvent('kiyafet2')
AddEventHandler('kiyafet2', function()
	TriggerEvent('mask')
end)

RegisterNetEvent('kiyafet3')
AddEventHandler('kiyafet3', function()
    TriggerEvent('handske')
end)

RegisterNetEvent('squad')
AddEventHandler('squad', function()
	TriggerEvent("meeta_police:squadMenu")
end)


RegisterNetEvent('kimlikgor')
AddEventHandler('kimlikgor', function()
local player, distance = ESX.Game.GetClosestPlayer()
	TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
end)
RegisterNetEvent('ehliyetgor')
AddEventHandler('ehliyetgor', function()
local player, distance = ESX.Game.GetClosestPlayer()
	TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
end)

RegisterNetEvent('kimlikgoster')
AddEventHandler('kimlikgoster', function()
-- local player, distance = ESX.Game.GetClosestPlayer()

-- if distance ~= -1 and distance <= 3.0 then
--     if showID ~= nil then
-- 	TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
-- 	end
-- 	else
-- 	exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 3000)})
-- 	end

local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

	if closestDistance ~= -1 and closestDistance <= 3.0 then
    TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(closestPlayer))
    else
    exports.pNotify:SendNotification({text = "No hay nadie cerca!", type = "error", timeout = math.random(1000, 3000)})
    end
end)
RegisterNetEvent('ehliyetgoster')
AddEventHandler('ehliyetgoster', function()
-- local player, distance = ESX.Game.GetClosestPlayer()

-- if distance ~= -1 and distance <= 3.0 then
--     if showDriver ~= nil then
-- 	TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'driver')
-- 	end
-- 	else
-- 	exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 3000)})
-- 	end

local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

	if closestDistance ~= -1 and closestDistance <= 3.0 then
    TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(closestPlayer), 'driver')
    else
    exports.pNotify:SendNotification({text = "No hay nadie cerca!", type = "error", timeout = math.random(1000, 3000)})
    end
end)


RegisterNetEvent("esx_policejob:kelepcecoz")
AddEventHandler("esx_policejob:kelepcecoz", function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

    if closestPlayer == -1 or closestDistance > 2.0 then
        exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
    else
		TriggerServerEvent('kelepcele:requestrelease', target_id, playerheading, playerCoords, playerlocation)
		exports.pNotify:SendNotification({text = "Kelepçeyi Çözdün.", type = "success", timeout = math.random(1000, 4000)})
    end
end)

RegisterNetEvent("esx_policejob:kelepce")
AddEventHandler("esx_policejob:kelepce", function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

    if closestPlayer == -1 or closestDistance > 2.0 then
        exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
    else
        TriggerServerEvent('esx_policejob:haILovePizzandcuff', GetPlayerServerId(closestPlayer))
    end	
end)



RegisterNetEvent('attach:prop_cs_cardbox_01') --prop_cs_cardbox_01
AddEventHandler('attach:prop_cs_cardbox_01', function()
	holdAnim()
    TriggerEvent("inrp_propsystem:attachItem","prop_cs_cardbox_01")
	
end)

RegisterNetEvent('tsandalye')
AddEventHandler('tsandalye', function()
	LoadModel('prop_wheelchair_01')
	local wheelchair = CreateObject(GetHashKey('prop_wheelchair_01'), GetEntityCoords(PlayerPedId()), true)
	
end, false)
LoadModel = function(model)
	while not HasModelLoaded(model) do
		RequestModel(model)
		Citizen.Wait(1)
	end
end
RegisterNetEvent('tsandalyesil')
AddEventHandler('tsandalyesil', function()
	local wheelchair = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 10.0, GetHashKey('prop_wheelchair_01'))
	if DoesEntityExist(wheelchair) then
		DeleteEntity(wheelchair)
	end
	
end, false)
RegisterNetEvent('sedye')
AddEventHandler('sedye', function()
LoadModel('v_med_bed1')
	local wheelchair = CreateObject(GetHashKey('v_med_bed1'), GetEntityCoords(PlayerPedId()), true)
	end)
RegisterNetEvent('sedyesil')
AddEventHandler('sedyesil', function()
	local wheelchair = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 10.0, GetHashKey('v_med_bed1'))
	if DoesEntityExist(wheelchair) then
		DeleteEntity(wheelchair)
	end
end, false)
RegisterNetEvent('bombox')
AddEventHandler('bombox', function()
	local bombox = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()), 10.0, GetHashKey('prop_boombox_01'))
	if DoesEntityExist(bombox) then
		DeleteEntity(bombox)
	end
end, false)
RegisterNetEvent('mdtopen')
AddEventHandler('mdtopen', function()
TriggerServerEvent('mdt:hotKeyOpen')
end)
RegisterNetEvent('attach:ex_office_swag_guns03')
AddEventHandler('attach:ex_office_swag_guns03', function()
	holdAnim()
    TriggerEvent("inrp_propsystem:attachItem","ex_office_swag_guns03")
	
end)

RegisterNetEvent('attach:p_gcase_s')
AddEventHandler('attach:p_gcase_s', function()
	holdAnim()
    TriggerEvent("inrp_propsystem:attachItem","p_gcase_s")
	
end)

RegisterNetEvent('attach:xm_prop_x17_bag_01a') --xm_prop_x17_bag_01a
AddEventHandler('attach:xm_prop_x17_bag_01a', function()
    TriggerEvent("inrp_propsystem:attachItem","xm_prop_x17_bag_01a")
	
end)

RegisterNetEvent('st:handcuff');
AddEventHandler('st:handcuff', function()
    local target, distance = ESX.Game.GetClosestPlayer()
    playerheading = GetEntityHeading(PlayerPedId())
    playerlocation = GetEntityForwardVector(PlayerPedId())
    playerCoords = GetEntityCoords(PlayerPedId())
    local target_id = GetPlayerServerId(target)
    print(distance)
    if distance <= 2.0 then
        if distance == -1 then
            exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
        else
            TriggerServerEvent('esx_policejob:haILovePizzandcuff', target_id, playerheading, playerCoords, playerlocation)
        end
    else
        exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
    end
end)
RegisterNetEvent('st:checkGSR');
AddEventHandler('st:checkGSR', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    local closestPlayerPed = GetPlayerPed(closestPlayer)
    if closestDistance <= 2.0 then
        TriggerServerEvent('GSR:Status2', GetPlayerServerId(closestPlayer))
    end
end)
RegisterNetEvent('st:uncuff');
AddEventHandler('st:uncuff', function()
    local target, distance = ESX.Game.GetClosestPlayer()
    playerheading = GetEntityHeading(PlayerPedId())
    playerlocation = GetEntityForwardVector(PlayerPedId())
    playerCoords = GetEntityCoords(PlayerPedId())
    local target_id = GetPlayerServerId(target)
    print(distance)
    if distance <= 2.0 then
        if distance == -1 then
            exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
        else
            TriggerServerEvent('esx_policejob:requestrelease', target_id, playerheading, playerCoords, playerlocation)
        end
    else
        exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
    end
end)
RegisterNetEvent('st:escort');
AddEventHandler('st:escort', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    local closestPlayerPed = GetPlayerPed(closestPlayer)
    if closestDistance <= 2.0 then
        TriggerServerEvent('esx_policejob:drag', GetPlayerServerId(closestPlayer))
    end
end)

RegisterNetEvent('esx_policejob:odenmemisfatura');
AddEventHandler('esx_policejob:odenmemisfatura', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    local closestPlayerPed = GetPlayerPed(closestPlayer)
    if closestDistance <= 2.0 then
        OpenUnpaidBillsMenu(nearbyPlayer)
    end
end)

RegisterNetEvent("esx_policejob:putInVehicle")
AddEventHandler("esx_policejob:putInVehicle", function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

    if closestPlayer == -1 or closestDistance > 2.0 then
        exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
    else
           TriggerServerEvent('esx_policejob:putInVehicle', GetPlayerServerId(closestPlayer))
    end
end)
RegisterNetEvent("hirsiz:putInVehicle")
AddEventHandler("hirsiz:putInVehicle", function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

    if closestPlayer == -1 or closestDistance > 2.0 then
        exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
    else
           TriggerServerEvent('esx_policejob:putInVehicle', GetPlayerServerId(closestPlayer))
    end
end)
RegisterNetEvent('st:takeoutvehicle');
AddEventHandler('st:takeoutvehicle', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    local closestPlayerPed = GetPlayerPed(closestPlayer)
    if closestDistance <= 2.0 then
        TriggerServerEvent('esx_policejob:OutVehicle', GetPlayerServerId(closestPlayer))
    end
end)
RegisterNetEvent('st:putv');
AddEventHandler('st:putv', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    local closestPlayerPed = GetPlayerPed(closestPlayer)
    if closestDistance <= 2.0 then
        TriggerServerEvent('esx_ambulancejob:putInVehicle', GetPlayerServerId(closestPlayer))
    end
end)

RegisterNetEvent("ustara")
AddEventHandler("ustara", function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

    if closestPlayer == -1 or closestDistance > 2.0 then
        exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
    else
        TriggerServerEvent('esx_policejob:message', GetPlayerServerId(closestPlayer), _U('being_searched'))
        OpenBodySearchMenu(closestPlayer)
    end
end)

RegisterNetEvent("esx_policejob:lisanscheck")
AddEventHandler("esx_policejob:lisanscheck", function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

    if closestPlayer == -1 or closestDistance > 2.0 then
        exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
    else
		ShowPlayerLicense(nearbyPlayer)
    end
end)

RegisterNetEvent("esx_policejob:OutVehicle")
AddEventHandler("esx_policejob:OutVehicle", function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

    if closestPlayer == -1 or closestDistance > 2.0 then
       exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
    else
        TriggerServerEvent('esx_policejob:OutVehicle', GetPlayerServerId(closestPlayer))
    end
end)

RegisterNetEvent("hirsiz:OutVehicle")
AddEventHandler("hirsiz:OutVehicle", function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

    if closestPlayer == -1 or closestDistance > 2.0 then
        exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
    else
        TriggerServerEvent('esx_policejob:OutVehicle', GetPlayerServerId(closestPlayer))
    end
end)



RegisterNetEvent('st:outv');
AddEventHandler('st:outv', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    local closestPlayerPed = GetPlayerPed(closestPlayer)
    if closestDistance <= 2.0 then
        TriggerServerEvent('esx_policejob:OutVehicle', GetPlayerServerId(closestPlayer))
    end
end)
RegisterNetEvent('st:pdrevive');
AddEventHandler('st:pdrevive', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    local closestPlayerPed = GetPlayerPed(closestPlayer)
    local health = GetEntityHealth(closestPlayerPed)
    if health == 0 then
        local playerPed = PlayerPedId()
        Citizen.CreateThread(function()
        TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
        Wait(5000)
        ClearPedTasks(playerPed)
            if GetEntityHealth(closestPlayerPed) == 0 then
                TriggerServerEvent('esx_ambulancejob:retomate58vive', GetPlayerServerId(closestPlayer))--('esx_policejob:revive')
            else
                exports['mythic_notify']:SendAlert('error', 'Yakında ölü biri yok', 4000)
            end
        end)
    end
end)
RegisterNetEvent('st:menuimpound');
AddEventHandler('st:menuimpound', function()
    local playerPed = PlayerPedId()
    local vehicle = ESX.Game.GetVehicleInDirection()
    if vehicle ~= nil then
        exports['progressBars']:startUI(10000, "Araç Çekiliyor")
        TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
        Citizen.Wait(10000)
        ClearPedTasks(playerPed)
        DeleteVehicle(vehicle)
        exports['mythic_notify']:SendAlert('success', 'Araba çekildi', 4000)
        Citizen.Wait(100)
    else
        exports['mythic_notify']:SendAlert('error', 'Yakında araba yok', 4000)
    end
end)
RegisterNetEvent('st:open');
AddEventHandler('st:open', function()
    local playerPed = PlayerPedId()
    local coords  = GetEntityCoords(playerPed)
    local vehicle = ESX.Game.GetVehicleInDirection()
    if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 3.0) then
        TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_WELDING", 0, true)
        exports['progressBars']:startUI(10000, "Araç Açılıyor")
        Citizen.Wait(10000)
        ClearPedTasksImmediately(playerPed)

        SetVehicleDoorsLocked(vehicle, 1)
        SetVehicleDoorsLockedForAllPlayers(vehicle, false)
        PlayVehicleDoorOpenSound(vehicle, 0)
        SetVehicleLights(vehicle, 2)
        Citizen.Wait(150)
        SetVehicleLights(vehicle, 0)
        exports['mythic_notify']:SendAlert('inform', 'Aracın kilidini açtın', 4000)
    else
        exports['mythic_notify']:SendAlert('error', 'Yakında araba yok', 4000)
    end
end)

RegisterNetEvent('nk_repair:MenuRipara')
AddEventHandler('nk_repair:MenuRipara', function()
	local ped = PlayerPedId()
	local coords = GetEntityCoords(ped)
	local veh = ObjectInFront(ped, coords)
	if DoesEntityExist(veh) then
		if IsEntityAVehicle(veh) then
			local elements = {
				{ label = 'Tamir Et', value = 'engb' }
			}
			ESX.UI.Menu.CloseAll()
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'bombtype', {
				title    = 'Mekanik',
				align    = 'top-left',
				elements = elements
			}, function(data, menu)
				local bomb = data.current.value

				if bomb == 'engb' then
						SetEntityAsMissionEntity(veh, true, true)
						TriggerServerEvent('nk_repair:RimuoviItem', ped, coords, veh)
					menu.close()
				end
			end, function(data, menu)
				menu.close()
			end)
		else
			ESX.ShowNotification('Yakınınızda ~y~Araç~s~ yok!') -- TRANSLATE THIS - THAT SAY WHEN YOU DON'T HAVE ANY VEHICLE IN THE NEAR
		end
	end
end)
RegisterNetEvent('st:mechclean');
AddEventHandler('st:mechclean', function()
    local playerPed = PlayerPedId()
    local coords  = GetEntityCoords(playerPed)
    local vehicle = ESX.Game.GetVehicleInDirection()
    if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 3.0) then
        TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_MAID_CLEAN", 0, true)
        exports['progressBars']:startUI(10000, "Limpiando auto")
        Citizen.Wait(10000)
        ClearPedTasksImmediately(playerPed)

        WashDecalsFromVehicle(vehicle, 1.0)
        SetVehicleDirtLevel(vehicle)
        exports['mythic_notify']:SendAlert('inform', 'Limpiaste el vehículo', 4000)
    else
        exports['mythic_notify']:SendAlert('error', 'No hay autos cerca', 4000)
    end
end)
RegisterNetEvent('st:kamu');
AddEventHandler('st:kamu', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    local closestPlayerPed = GetPlayerPed(closestPlayer)
    if closestDistance <= 2.0 then
        SendToCommunityService(GetPlayerServerId(closestPlayer))
    end
end)
RegisterNetEvent('st:ceza');
AddEventHandler('st:ceza', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    local closestPlayerPed = GetPlayerPed(closestPlayer)
    if closestDistance <= 2.0 then
        OpenFineMenu(closestPlayer)
    end
end)
RegisterNetEvent('st:bag');
AddEventHandler('st:bag', function()
    local target, distance = ESX.Game.GetClosestPlayer()
    local target_id = GetPlayerServerId(target)
    if distance <= 2.0 then
        TriggerServerEvent('st:bag2', target_id)
    end
end)
RegisterNetEvent('st:bag3');
AddEventHandler('st:bag3', function(targetid)
    exports['mythic_notify']:SendAlert('inform', 'Çantası Açıldı', 4000)
    owner = targetid
    TriggerEvent('disc-inventoryhud:openInventory', {
        type = 'canta',
        owner = owner,
        slots = 80,
    })
end)
function OpenFineMenu(player)

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'fine',
	{
		title    = 'Ceza Kes',
		align    = 'top-left',
		elements = {
			{label = 'Trafik Cezaları', value = 0},
			{label = 'Küçük Cezalar',   value = 1},
			{label = 'Ortalama Cezalar', value = 2},
			{label = 'Önemli Cezalar',   value = 3}
		}
	}, function(data, menu)
		OpenFineCategoryMenu(player, data.current.value)
	end, function(data, menu)
		menu.close()
	end)

end

function OpenFineCategoryMenu(player, category)

	ESX.TriggerServerCallback('esx_policejob:getFineList', function(fines)

		local elements = {}

		for i=1, #fines, 1 do
			table.insert(elements, {
				label     = fines[i].label .. ' <span style="color: green;"> $' .. fines[i].amount .. '</span>',
				value     = fines[i].id,
				amount    = fines[i].amount,
				fineLabel = fines[i].label
			})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'fine_category',
		{
			title    = 'Ceza Kes',
			align    = 'top-left',
			elements = elements,
		}, function(data, menu)

			local label  = data.current.fineLabel
			local amount = data.current.amount

			menu.close()

            TriggerServerEvent('esx_billing:sendtomate58Bill', GetPlayerServerId(player), 'society_police', label, amount)

			ESX.SetTimeout(300, function()
				OpenFineCategoryMenu(player, category)
			end)

		end, function(data, menu)
			menu.close()
		end)

	end, category)

end

function SendToCommunityService(player)
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'Community Service Menu', {
		title = "Community Service Menu",
	}, function (data2, menu)
		local community_services_count = tonumber(data2.value)
		
		if community_services_count == nil then
			ESX.ShowNotification('Invalid services count.')
		else
			TriggerServerEvent("esx_communityservice:sendTotomate58CommunityService", player, community_services_count)
			menu.close()
		end
	end, function (data2, menu)
		menu.close()
	end)
end

function OpenIdentityCardMenu(player)

	ESX.TriggerServerCallback('esx_policejob:getOtherPlayerData', function(data)

		local elements    = {}
		local nameLabel   = 'Adı: ' .. data.name
		local jobLabel    = nil
		local sexLabel    = nil
		local dobLabel    = nil
		local heightLabel = nil
		local idLabel     = nil
	
		if data.job.grade_label ~= nil and  data.job.grade_label ~= '' then
			jobLabel = 'Meslek: ' .. data.job.label .. ' - ' .. data.job.grade_label
		else
			jobLabel = 'Meslek: ' .. data.job.label
		end
	
			nameLabel = 'Adı: ' .. data.firstname .. ' ' .. data.lastname
	
			if data.sex ~= nil then
				if string.lower(data.sex) == 'm' then
					sexLabel = 'Erkek'
				else
					sexLabel = 'Kadın'
				end
			else
				sexLabel = 'Bilinmiyor'
			end
	
			if data.dob ~= nil then
				dobLabel = 'Doğum Tarihi: ' .. data.dob
			else
				dobLabel = 'Doğum Tarihi: Bilinmiyor'
			end
	
			if data.height ~= nil then
				heightLabel = 'Boy: ' .. data.height
			else
				heightLabel = 'Boy: Bilinmiyor'
			end
	
			if data.name ~= nil then
				idLabel = 'Kimlik: ' .. data.name
			else
				idLabel = 'Kimlik: Bilinmiyor'
			end
	
		local elements = {
			{label = nameLabel, value = nil},
			{label = jobLabel,  value = nil},
		}
	
			table.insert(elements, {label = sexLabel, value = nil})
			table.insert(elements, {label = dobLabel, value = nil})
			table.insert(elements, {label = heightLabel, value = nil})
			table.insert(elements, {label = idLabel, value = nil})
	
		if data.drunk ~= nil then
			table.insert(elements, {label = _U('bac', data.drunk), value = nil})
		end
	
		if data.licenses ~= nil then
	
			table.insert(elements, {label = 'Lisans Adı:', value = nil})
	
			for i=1, #data.licenses, 1 do
				table.insert(elements, {label = data.licenses[i].label, value = nil})
			end
	
		end
	
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'citizen_interaction',
		{
			title    = 'Vatandaş Etkileşimi',
			align    = 'top-left',
			elements = elements,
		}, function(data, menu)
	
		end, function(data, menu)
			menu.close()
		end)
	
	end, GetPlayerServerId(player))

end

--DOKTOR--
RegisterNetEvent('st:emsRevive');
AddEventHandler('st:emsRevive', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    if closestPlayer == -1 or closestDistance > 1.0 then
        exports['mythic_notify']:SendAlert('error', 'Yakında oyuncu yok', 4000)
    else
        ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
            if quantity > 0 then
                local closestPlayerPed = GetPlayerPed(closestPlayer)

                if IsPedDeadOrDying(closestPlayerPed, 1) then
                    local playerPed = PlayerPedId()


                    local lib, anim = 'mini@cpr@char_a@cpr_str', 'cpr_pumpchest'

                    for i=1, 15, 1 do
                        Citizen.Wait(900)
                
                        ESX.Streaming.RequestAnimDict(lib, function()
                            TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
                        end)
                    end

                    TriggerServerEvent('esx_ambulancejob:removeItem', 'medikit')
                    TriggerServerEvent('esx_ambulancejob:retomate58vive', GetPlayerServerId(closestPlayer))
                else
                    exports['mythic_notify']:SendAlert('error', 'Kişinin kritik durumu yok', 4000)
                end
            else
                exports['mythic_notify']:SendAlert('error', 'Medikitin yok', 4000)
            end

        end, 'medikit')
    end
end)
RegisterNetEvent('st:emssmallheal');
AddEventHandler('st:emssmallheal', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    if closestPlayer == -1 or closestDistance > 1.0 then
        exports['mythic_notify']:SendAlert('error', 'Yakında oyuncu yok', 4000)
    else
        ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
            if quantity > 0 then
                local closestPlayerPed = GetPlayerPed(closestPlayer)
                local health = GetEntityHealth(closestPlayerPed)

                if health > 0 then
                    local playerPed = PlayerPedId()

                    TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
                    Citizen.Wait(10000)
                    ClearPedTasks(playerPed)

                    TriggerServerEvent('esx_ambulancejob:removeItem', 'bandage')
                    TriggerServerEvent('esx_ambulancejob:heal', GetPlayerServerId(closestPlayer), 'small')
                else
                    exports['mythic_notify']:SendAlert('error', 'Kişinin kötü durumu yok', 4000)
                end
            else
                exports['mythic_notify']:SendAlert('error', 'Bandajın yok', 4000)
            end
        end, 'bandage')
    end
end)
RegisterNetEvent('st:emsbigheal');
AddEventHandler('st:emsbigheal', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    if closestPlayer == -1 or closestDistance > 1.0 then
        exports['mythic_notify']:SendAlert('error', 'Yakında oyuncu yok', 4000)
    else
        ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
            if quantity > 0 then
                local closestPlayerPed = GetPlayerPed(closestPlayer)
                local health = GetEntityHealth(closestPlayerPed)

                if health > 0 then
                    local playerPed = PlayerPedId()

                    IsBusy = true
                    TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
                    Citizen.Wait(10000)
                    ClearPedTasks(playerPed)

                    TriggerServerEvent('esx_ambulancejob:removeItem', 'medikit')
                    TriggerServerEvent('esx_ambulancejob:heal', GetPlayerServerId(closestPlayer), 'big')
                    IsBusy = false
                else
                    exports['mythic_notify']:SendAlert('error', 'Kişinin kötü durumu yok', 4000)
                end
            else
                exports['mythic_notify']:SendAlert('error', 'Medikitin yok', 4000)
            end
        end, 'medikit')
    end
end)
