fx_version 'cerulean'
games { 'gta5' };


Author "Ezukau#1144"
version "1.0"

shared_scripts {
    "shared/*.lua",
}

client_scripts {
    "@es_extended/locale.lua",
    "client/*.lua",
}

server_scripts {
    "@mysql-async/lib/MySQL.lua",
    "@es_extended/locale.lua",
    "server/*.lua",
}


