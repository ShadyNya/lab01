lgi = require 'lgi' -- подключение модуля lgi

gtk = lgi.Gtk
gtk.init() -- инициализация библиотеки gtk

bld = gtk.Builder() -- создание нового экземпляра построителя интерфейсов
bld:add_from_file('StudentovaLab1.glade') -- загрузка описания интерфейса

ui = bld.objects

ui.wnd.title = 'lab-01' -- задание названия главного 
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()

gtk.main()

