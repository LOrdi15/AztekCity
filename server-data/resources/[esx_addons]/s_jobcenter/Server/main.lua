-- Original Author: SimoN#6253 (Discord) | S_imoN (Forum CFX) --
-- Please Respect My Work --
-- Do Not Touch Here If You Don't Know What You Are Doing --

ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('s_jobcenter:setJob') 
AddEventHandler('s_jobcenter:setJob', function(job) 
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob(job, 0)
end)