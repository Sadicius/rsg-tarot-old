fx_version "cerulean"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'

name "cards"

ui_page "html/index.html"

client_scripts {
    '@menuv/menuv.lua',
    'config.lua',
    'client.lua'
}

server_scripts {
 'config.lua',
 'server.lua',
}

files {
 'html/index.html',
 'html/img/*',
 'html/script.js',
 'html/style.css',
}

dependencies {
   'menuv'
}

lua54 'yes'