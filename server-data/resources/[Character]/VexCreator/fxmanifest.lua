fx_version 'adamant'
game 'gta5'
name 'SkinCreator'
description 'SkinCreator by VexDev'
ui_page "interface/ui.html"
author 'Toni#6338'

files {
    "interface/ui.html",
	"interface/assets/*.png",
	"interface/assets/faces/*.jpg",
	"interface/fonts/Circular-Bold.ttf",
	"interface/fonts/Circular-Book.ttf",
	"interface/js/app.js",
	"interface/js/vuescript.js",
	"interface/style.css",
}

-- Client Scripts
client_scripts {
    'client.lua',
}

dependencies {
	'es_extended',
	'skinchanger',
	'esx_skin'
}