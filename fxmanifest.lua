fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Notepad'
description 'Check if admin is online | Notepad'

shared_scripts {
    '@ox_lib/init.lua',
}

client_scripts {
    'lib/Tunnel.lua',
    'lib/Proxy.lua',
    'Config.lua',
    "callback/client.lua",
    'client.lua'
}

server_scripts {
    '@vrp/lib/utils.lua',
    'Config.lua',
    "callback/server.lua",
    'server.lua'
}