Config = {}

Config.okokTextUI = true -- true = okokTextUI false = ShowHelpNotification

Config.IBANPrefix = "NT" -- prefix del IBAN

Config.IBANNumbers = 6 -- caracteres del IBAN

Config.CustomIBANMaxChars = 10 

Config.CustomIBANAllowLetters = true -- uso de letras en el IBAN

Config.IBANChangeCost = 5000 -- Coste del cambio de IBAN

Config.PINChangeCost = 1000 -- Coste del cambio de PIN

Config.AnimTime = 2 * 1000 -- animación de ATM

Config.Societies = { -- Sociedades que tienen cuenta en el banco
	"police",
	"ambulance",
	"mechanic",
}

Config.SocietyAccessRanks = { -- Rangos de las sociedades con acceso a ella en el banco
	"boss",
	"chief",
	"boss",
}

Config.ShowBankBlips = true -- true = blips activos | false = blips desactivados

Config.BankLocations = { 
	{blip = 108, blipColor = 2, blipScale = 0.9, x = 150.266, y = -1040.203, z = 29.374, blipText = "Banco", BankDistance = 3},
	{blip = 108, blipColor = 2, blipScale = 0.9, x = -1212.980, y = -330.841, z = 37.787, blipText = "Banco", BankDistance = 3},
	{blip = 108, blipColor = 2, blipScale = 0.9, x = -2962.582, y = 482.627, z = 15.703, blipText = "Banco", BankDistance = 3},
	{blip = 108, blipColor = 2, blipScale = 0.9, x = -112.202, y = 6469.295, z = 31.626, blipText = "Banco", BankDistance = 3},
	{blip = 108, blipColor = 2, blipScale = 0.9, x = 314.187, y = -278.621, z = 54.170, blipText = "Banco", BankDistance = 3},
	{blip = 108, blipColor = 2, blipScale = 0.9, x = -351.534, y = -49.529, z = 49.042, blipText = "Banco", BankDistance = 3},

	{blip = 108, blipColor = 2, blipScale = 0.9, x = 1175.064, y = 2706.643, z = 38.094, blipText = "Banco", BankDistance = 3},
}

Config.ATMDistance = 1.5 -- Distancia para abrir ATM

Config.ATM = { -- NO TOCAR
	{model = -870868698}, 
	{model = -1126237515}, 
	{model = -1364697528}, 
	{model = 506770882}
}