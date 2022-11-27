Config = {}

Config.Marker = {
    color = {r = 0, g = 0, b = 255},
    size = {x = 1.0, y = 1.0, z = 1.0},
    type = 22
}

Config.VehicleLicensesOnly = false -- this includes ["dmv", "drive", "drive_bike", "drive_truck", "drive...."] anything with drive..

Config.Locations = {
    LSPD = vector3(382.52,-1596.76,30.05)
    -- SSPD = vector3(0,0,0) -- example for adding more location
}

Config.Discord = {
    WebhookUserName = "Orquidea Licencias",
    Webhook = "https://discord.com/api/webhooks/939304701126660136/ToFYguuobdeR31iEWEUAjWKV4Eh5gXMpWlwMRJEBw-Z6MhSYKGvHyuGRmX9w_XRlxPyK",
    ServerName = "Orquidea"
}

Config.DisplayAllLicenses = false

-- Display specific licenses only. To enable this feature, set DisplayAllLicenses to false
Config.SpecificLicenses = {
    "weapon"
}

Language = {
    ['success_add'] = "Creaste la licencia",
    ['success_revoke'] = "Removiste la licencia",
    ['add_license'] = 'Recibiste la licencia: %s!',
    ['remove_license'] = 'tu  licencia  %s fue removida!',
    ['no_access'] = "You don't have access to open it!",
    ['open_menu_help'] = "Presiona ~INPUT_CONTEXT~ para abrir el menu de licencias"
}