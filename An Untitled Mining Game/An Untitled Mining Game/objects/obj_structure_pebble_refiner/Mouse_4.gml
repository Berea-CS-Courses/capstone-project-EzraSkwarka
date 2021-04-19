if (distance_to_object(obj_player) <= 16) {
	var is_close_enough = true;
} else {
	is_close_enough = false;
}

if(is_close_enough == true)
{
	if (scr_consume_item_from_inventory(1,3)) { // rock
		shiny_multiplier = floor(1+.1*structure_level);
	
		repeat(shiny_multiplier)
		{
			scr_create_obj_item(2) //shiny rock
		}
	}
	/*if(global.num_pebbles >= 3)
	{
		global.num_pebbles += -3;
	
		shiny_multiplier = floor(1+.1*structure_level);
	
		repeat(shiny_multiplier)
		{
			instance_create_layer(x + 0, y + 0, "Active", obj_mat_shiny_rock);
		}
	}*/
}