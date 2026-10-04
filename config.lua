Config = {}

-- Unidad de medida: 'MPH' o 'KMH'
Config.SpeedUnit = 'MPH'

-- Velocidad máxima permitida (250 mph por defecto)
Config.MaxSpeed = 250.0

-- Vehículos o clases exentas (opcional)
-- Clases de GTA: 14 (Barcos), 15 (Helicópteros), 16 (Aviones), 19 (Militares)
Config.IgnoredClasses = {
    [15] = true, -- Helicópteros
    [16] = true, -- Aviones
}
