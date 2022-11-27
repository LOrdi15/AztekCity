local DISCORD_WEBHOOK = "Your Webhook Here"


RegisterServerEvent('log')
AddEventHandler('log', function(data)



    local connect = {
        {
            ["color"] = "255",
            ["title"] = "New Form | " ..data.plate.."-"..data.lastname,
            ["description"] = "First Name: \n **"..data.plate.."** \n Last Name: \n **"..data.lastname.."** \n Age: \n **"..data.age.."** \n Why: \n**"..data.why.."**\n Gender:\n **"..data.gender.."**",
	        ["footer"] = {
                ["text"] = "New Police Form",
            },
        }
    }
    PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = "Police Forms",  avatar_url = "https://static.wikia.nocookie.net/gta/images/5/5e/Sceau-lspd-gtav.png/revision/latest?cb=20140916194909&path-prefix=fr",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)
