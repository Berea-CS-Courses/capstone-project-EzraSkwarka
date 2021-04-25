if (distance_to_object(obj_player) <= 16) {
	var is_close_enough = true;
} else {
	is_close_enough = false;
}

if(is_close_enough == true)
{
	if (scr_can_consume_item_from_inventory(item.rock, 3)) { // rock
		scr_consume_item_from_inventory(item.rock, 3);
		shiny_multiplier = floor(1+.1*structure_level);
	
		repeat(shiny_multiplier)
		{
			scr_create_obj_item(2) //shiny rock
		}
	}
}