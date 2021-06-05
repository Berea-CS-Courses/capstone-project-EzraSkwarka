depth = -1;
scale = 2;
show_inventory = false;
//i_am_inventory = "Don't worry about it, im for the save file";

inv_slots = 6;
inv_slots_width = 8;
inv_slots_height = 3;

selected_slot = 0;
pickup_slot = -1;
m_slotx = 0;
m_sloty = 0;

x_buffer = 2;
y_buffer = 4;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cell_size = 32;

inv_UI_width = 288;
inv_UI_height = 192;

spr_inv_UI = spr_inventory_UI;
spr_inv_items = spr_inventory_items;

spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

info_x = inv_UI_x + (9 * scale);
info_y = inv_UI_y + (9 * scale);

slots_x = info_x;
slots_y = inv_UI_y + (40 * scale);

//---------Player Info
//0 = NAME
//1 = Renown

ds_player_info = ds_grid_create(2, 2);
ds_player_info[# 0, 0] = "Name";
ds_player_info[# 1, 0] = "Renown";


ds_player_info[# 0, 1] = "Player";
ds_player_info[# 1, 1] = global.renown;


//---------Inventory
//0 = ITEM
//1 = NUMBER

ds_inventory = ds_grid_create(2, inv_slots);

//---------Items
enum item {
	none		= 0,
	rock		= 1,
	shiny_rock	= 2,
	wood		= 3,
	coal,
	coral,
	iron_ore,
	iron_ingot,
	copper_ore,
	copper_ingot,
	steel_ore, ///yes I know steel is an alloy
	steel_ingot,
	mythril_ore,
	mythril_ingot,
	uranium_ore,
	uranium_ingot,
	molten_ore,
	molten_ingot,
	
	
	
	height,
	
	renown_ref = -2, //for the consume functions
}

//randomly fill inventory for testing
var ii = 0; repeat(inv_slots){
	ds_inventory[# 0, ii] = irandom_range(1, item.height-1);
	ds_inventory[# 1, ii] = irandom_range(1, 10);
	
	ii += 1;
}