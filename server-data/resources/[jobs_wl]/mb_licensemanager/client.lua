ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        local playerPed = PlayerPedId()
        local pedCoords = GetEntityCoords(playerPed)
        local letSleep = true
        
        if ESX.PlayerData.job and ESX.PlayerData.job.name == "police" and ESX.PlayerData.job.grade > 5 then
            for k,v in pairs(Config.Locations) do
                local dist = #(pedCoords - v)
                if dist < 10.0 then
                    letSleep = false
                    DrawMarker(Config.Marker.type, v, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.Marker.size.x, Config.Marker.size.y, Config.Marker.size.z, Config.Marker.color.r, Config.Marker.color.g, Config.Marker.color.b, 100, false, false, 2, false, nil, nil, false)

                    if dist < 1.5 then
                        DisplayHelpText(Language['open_menu_help'])
                        if IsControlJustReleased(0, 38) then
                            OpenLicenseManager()
                        end
                    end
                end
            end
        end

        if letSleep then
            Citizen.Wait(500)
        end
    end
end)

function OpenLicenseManager()
    if ESX.PlayerData.job.name == "police" then
        ESX.Streaming.RequestAnimDict("anim@heists@prison_heiststation@cop_reactions", function()
            TaskPlayAnim(PlayerPedId(), "anim@heists@prison_heiststation@cop_reactions", "cop_b_idle", 8.0, 8.0, -1, 1, 0, 0, 0, 0)
        end)
        SendNUIMessage({
            type = "display"
        })
        SetNuiFocus(true, true)
    else
        ESX.showNotification(Language['no_access'])
    end
end

RegisterNUICallback('getName', function(data, cb)
    ESX.TriggerServerCallback('mb_licensemanager:name', function(playerName)
        cb(playerName)
    end)
end)

RegisterNUICallback('getPlayer', function(data, cb)
    ESX.TriggerServerCallback('mb_licensemanager:playerdata', function(player)
        cb(player)
    end, data.id)
end)

RegisterNUICallback('revoke', function(data, cb)
    ESX.TriggerServerCallback('mb_licensemanager:revoke', function(status)
        if status then
            cb(Language['success_revoke'])
        else
            cb(false)
        end
    end, data.identifier, data.license)
end)

RegisterNUICallback('managePlayer', function(data, cb)
    ESX.TriggerServerCallback('mb_licensemanager:manageplayer', function(player)
        cb(player)
    end, data.identifier)
end)

RegisterNUICallback('getLicensedPlayers', function(data, cb)
    ESX.TriggerServerCallback('mb_licensemanager:getLicensePlayers', function(player)
        cb(player)
    end)
end)

RegisterNUICallback('createLicense', function(data, cb)
    ESX.TriggerServerCallback('mb_licensemanager:add', function(status)
        if status then
            cb(Language['success_add'])
        else
            cb(false)
        end
    end,data.player.identifier, data.license)
end)

RegisterNUICallback('close', function(data, cb)
    -- DO 
    ClearPedTasksImmediately(PlayerPedId())
    SetNuiFocus(false, false)
    cb("ok")
end)

RegisterNetEvent('open-police-license-manager')
AddEventHandler('open-police-license-manager', function()
    OpenLicenseManager()
end)