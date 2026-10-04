# RedRox Vehicle Top Speed Limiter

Un recurso ligero y eficiente para **FiveM** desarrollado en Lua 5.4 que permite limitar la velocidad máxima de los vehículos de forma automática.

---

## Características

* **Unidades personalizables**: Soporta tanto **MPH** (Millas por hora) como **KMH** (Kilómetros por hora).
* **Exclusión de clases**: Permite ignorar clases específicas de vehículos de GTA (como helicópteros o aviones por defecto).
* **Optimizado**: Bajo consumo de recursos (`0.00ms` en reposo) utilizando bucles inteligentes según el estado del jugador.
* **Configuración abierta**: Archivo de configuración totalmente accesible (incluido en `escrow_ignore`)[cite: 1].

---

## Instalación

1. Descarga o clona el repositorio en tu carpeta de recursos (`resources`).
2. Añade `ensure redrox-velocitycar` en tu archivo `server.cfg`.
3. Configura los parámetros a tu gusto en el archivo `config.lua`[cite: 1].

---

## Configuración (`config.lua`)

El recurso incluye un archivo de configuración sencillo para ajustar los límites globales:

```lua
Config = {}

-- Unidad de medida: 'MPH' o 'KMH'
Config.SpeedUnit = 'MPH'

-- Velocidad máxima permitida (250 mph por defecto)
Config.MaxSpeed = 250.0

-- Vehículos o clases exentas (opcional)
-- Clases de GTA: 14 (Barcos), 15 (Helicópteros), 16 (Aviones), 19 (Militares)
Config.IgnoredClasses = {
    [15] = true, -- Helicópteros
    [16] = true  -- Aviones
}
