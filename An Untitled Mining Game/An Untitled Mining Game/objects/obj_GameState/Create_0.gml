global.mouse_level = 0;
global.renown = 0;
global.is_paused = false;

has_had_shiny_rocks = false;
show_inventory = false;

instance_create_layer(0, 0, "UI", obj_toolbar);

//Backstage Menus
instance_create_layer(0, 0, "UI", obj_inventory);
instance_create_layer(0, 0, "UI", obj_relics_menu);
instance_create_layer(0, 0, "UI", obj_structures_menu);
instance_create_layer(0, 0, "UI", obj_struct_spawner);
instance_create_layer(0, 0, "UI", obj_SaveTracker);