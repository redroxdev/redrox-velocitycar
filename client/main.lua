local function GetMaxSpeedInMps()
    if Config.SpeedUnit == 'KMH' then
        return Config.MaxSpeed / 3.6
    end
    -- Default: MPH
    return Config.MaxSpeed * 0.44704
end

local function ApplySpeedLimit(vehicle)
    if not DoesEntityExist(vehicle) then return end

    local vehicleClass = GetVehicleClass(vehicle)
    if Config.IgnoredClasses and Config.IgnoredClasses[vehicleClass] then
        return
    end

    local maxSpeedMps = GetMaxSpeedInMps()
    SetEntityMaxSpeed(vehicle, maxSpeedMps)
    SetVehicleMaxSpeed(vehicle, maxSpeedMps)
end

CreateThread(function()
    local lastVehicle = nil

    while true do
        local sleep = 1000
        local ped = PlayerPedId()

        if IsPedInAnyVehicle(ped, false) then
            local vehicle = GetVehiclePedIsIn(ped, false)

            -- Verificamos si el ped es el conductor
            if vehicle ~= 0 and GetPedInVehicleSeat(vehicle, -1) == ped then
                sleep = 500

                if vehicle ~= lastVehicle then
                    ApplySpeedLimit(vehicle)
                    lastVehicle = vehicle
                end
            else
                lastVehicle = nil
            end
        else
            lastVehicle = nil
        end

        Wait(sleep)
    end
end)
