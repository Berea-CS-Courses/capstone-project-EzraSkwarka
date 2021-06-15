if(!show_inventory) exit;

//-------Inventory Back

var _ix = 0; 
var _iy = 0;
var _i = 0;

repeat (inv_slots_height) {
	repeat (inv_slots_width) { 
		if (_i < inv_slots) {
			draw_sprite_ext(spr_inventory_slot, 0, 
				inv_UI_x + _ix * (cell_size + x_buffer) * scale,
				inv_UI_y + _iy * (cell_size + y_buffer) * scale, 
				scale, scale, 0, c_white, 1);
		}
		_ix++;
		_i++;
	}
	_ix = 0;
	_iy++;
}

//------Inventory
var ii, ix, iy, xx, yy, sx, sy, iitem, inv_grid;
var c = c_black; 
// ii is the inventory slot index, ix and iy denote its xy cords
// xx yy are the x,y location for slot
//sx and sy are the cords of the sprite on its sprite sheet
//iitem is the inventory item/object
//inv_grid is the local version of the enumerated item grid
ii = 0; ix = 0; iy = 0; inv_grid = ds_inventory;

repeat(inv_slots){
	//x,y location for slot
	xx = slots_x + (7 + (cell_size+x_buffer)*ix*scale);
	yy = slots_y + (7 + (cell_size+y_buffer)*iy*scale);
	
	//Item
	iitem = inv_grid[# 0, ii];
	sx = (iitem mod spr_inv_items_columns)*cell_size;
	sy = (iitem div spr_inv_items_columns)*cell_size;
	
	//Draw Slot and Item
	//draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, 1);
	
	switch(ii) {
		case selected_slot:
			if(iitem > 0) draw_sprite_part_ext(
				spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1
			);
			gpu_set_blendmode(bm_add);
			draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, .3);
			gpu_set_blendmode(bm_normal);
		break;
		
		case pickup_slot:
			if(iitem > 0) draw_sprite_part_ext(
				spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, .2
			);
		break;
		
		default:
			if(iitem > 0) draw_sprite_part_ext(
				spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1
			);
	}
	
	//Draw item Number
	if(iitem > 0){
		var number = inv_grid[# 1, ii];
		c = c_white;
		draw_text_color(xx, yy + (cell_size - 12 * scale), string(number), c,c,c,c, 1);
		c = c_black;
	}
	
	//Increment
	ii += 1;
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;
}

if (pickup_slot != -1) {
	//Get the item
	iitem = inv_grid[# 0, pickup_slot];
	sx = (iitem mod spr_inv_items_columns)*cell_size;
	sy = (iitem div spr_inv_items_columns)*cell_size;
	draw_sprite_part_ext(
			spr_inv_items, 0, sx, sy, cell_size, cell_size, mousex, mousey, scale, scale, c_white, .2
		);

	//Draw the amount
	var inum = inv_grid[# 1, pickup_slot];
	draw_text_color(mousex + (cell_size * scale * .5), mousey, string(inum), c,c,c,c, 1);
}

// Renwon
draw_set_color(c_white)
draw_text(gui_width * .85, gui_height * .9, "Renown: " + string(global.renown));
draw_set_color(c_black)