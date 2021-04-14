var l24CF565B_0;
l24CF565B_0 = keyboard_check(vk_shift);
if (l24CF565B_0)
{
	if (distance_to_object(obj_player) <= 16) {
		var is_close_enough = true;
	} else {
		is_close_enough = false;
	}

	if(is_close_enough == true)
	{
		if(global.num_pebbles >= 3)
		{
			global.num_pebbles += -3;
		
			shiny_multiplier = floor(1+.1*structure_level);
		
			repeat(shiny_multiplier)
			{
				instance_create_layer(x + 0, y + 0, "Active", obj_mat_shiny_rock);
			}
		}
	}
}