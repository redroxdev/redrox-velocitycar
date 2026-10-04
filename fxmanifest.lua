fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'redrox'
description 'Vehicle top speed limiter'
version '1.0.0'

shared_script 'config.lua'
client_script 'client/main.lua'

-- Archivos desbloqueados para que los compradores puedan editar la configuración
escrow_ignore {
    'config.lua'
}
