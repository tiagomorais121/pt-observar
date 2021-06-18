fx_version 'bodacious'
game 'gta5'

description 'vRP PT-Observar Converted by PTUltra'
author 'PTUltra#0001'
version '1.0.0'

ui_page {
  'ui/index.html'
}


files {
	'html/ui.html',
	'html/css/app.css',
	'html/js/wrapper.js',
	'html/js/mustache.min.js',
	'html/js/app.js',
	'html/fonts/pdown.ttf',
	'html/fonts/bankgothic.ttf'
}


server_scripts {
 '@vrp/lib/utils.lua',
 '@mysql-async/lib/MySQL.lua',
 'server/main.lua'
}
 
client_script {
	'html/menu.lua',
  'client/main.lua'
}

files {
  'ui/index.html',
  'ui/style.css',
  'ui/main.js',
}
