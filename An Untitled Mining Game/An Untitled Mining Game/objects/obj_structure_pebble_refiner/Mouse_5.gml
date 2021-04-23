// If close enough
if (distance_to_object(obj_player) <= 16) {
	var is_close_enough = true;
} else {
	is_close_enough = false;
}

// If you have enough shiny rocks
var needed_shiny_rocks = floor(power(1.1, structure_level));

if(is_close_enough == true)
{
	if(scr_consume_item_from_inventory(2, needed_shiny_rocks))
	{
		structure_level += 1;
	}
}