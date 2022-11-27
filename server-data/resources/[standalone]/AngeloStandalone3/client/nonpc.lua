Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        Vehiculos = (0.0)
        Peds = (0.3)

        SetVehicleDensityMultiplierThisFrame(Vehiculos) -- Trafico Vehiculos

        SetRandomVehicleDensityMultiplierThisFrame(Vehiculos) -- Vehiculos
        SetParkedVehicleDensityMultiplierThisFrame(Vehiculos) -- Vehiculos
        SetGarbageTrucks(false) -- Camiones
        SetRandomBoats(false) -- Barcos
        SetCreateRandomCops(false) -- Policias
        SetCreateRandomCopsNotOnScenarios(false) -- Policias
        SetCreateRandomCopsOnScenarios(false) -- Policias

        local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
		RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
	end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        SetEveryoneIgnorePlayer(PlayerId(), true)
    end
end)