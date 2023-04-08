fx_version 'cerulean'
game 'gta5'

author 'Goobastank - Vast Horizons'
description 'White Widow Job with custom items and effects'
version '1.0.0'

shared_scripts {
    'config.lua',
    --'@qb-core/import.lua'
}

client_scripts {
    'client/*.lua',
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
}

server_scripts {
    'server/*.lua',
}