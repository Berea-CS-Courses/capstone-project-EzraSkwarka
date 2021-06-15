depth = -1;
scale = 2.5;
show_inventory = false;

inv_slots = 10;
inv_slots_width = 8;
inv_slots_height = 3;

selected_slot = 0;
pickup_slot = -1;
m_slotx = 0;
m_sloty = 0;

x_buffer = 8;
y_buffer = 8;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cell_size = 32;

inv_UI_width = 400;
inv_UI_height = 350;

spr_inv_UI = spr_inventory_UI;
spr_inv_items = spr_inventory_items;

spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

//Starting Draw position
inv_UI_x = (gui_width * 0.175);
inv_UI_y = (gui_height * 0.20);

info_x = inv_UI_x + (9 * scale);
info_y = inv_UI_y + (9 * scale);

slots_x = inv_UI_x;
slots_y = inv_UI_y;

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
	none,
	rock,
	shiny_rock,
	wood,
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

name_array = [
	"none",
	"Rock",
	"Shiny Rock",
	"Wood",
	"Coal",
	"Coral",
	"Iron Ore",
	"Iron Ingot",
	"Copper Ore",
	"Copper Ingot",
	"Steel Ore", ///yes I know steel is an alloy
	"Steel Ingot",
	"Mythril Ore",
	"Mythril Ingot",
	"Uranium Ore",
	"Uranium Ingot",
	"Molten Ore",
	"Molten Ingot"
]

//randomly fill inventory for testing
var ii = 0; repeat(inv_slots){
	ds_inventory[# 0, ii] = irandom_range(1, 3);
	ds_inventory[# 1, ii] = irandom_range(1, 10);
	
	ii += 1;
}