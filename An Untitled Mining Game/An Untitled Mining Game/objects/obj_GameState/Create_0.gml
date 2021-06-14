//I want more randomness
randomize()

global.mouse_level = 0;
global.renown = 0;
global.is_paused = false;

//Reset Call
Reset = false;

screen_width = 1280;
global.ScreenWidth = 1280;
screen_height = 960;
global.ScreenHeight = 960;

show_menu = false;
drawn_menu = false;

//Button refrences
save_button = 0;
load_button = 0;
exit_button = 0;

instance_create_layer(0, 0, "UI", obj_toolbar);

//Backstage Menus
instance_create_layer(0, 0, "UI", obj_inventory);
instance_create_layer(0, 0, "UI", obj_relics_menu);
instance_create_layer(0, 0, "UI", obj_structures_menu);
instance_create_layer(0, 0, "UI", obj_struct_spawner);
instance_create_layer(0, 0, "UI", obj_SaveTracker);
instance_create_layer(0, 0, "UI", obj_MenuBuilder);
instance_create_layer(0, 0, "UI", obj_NodeController);