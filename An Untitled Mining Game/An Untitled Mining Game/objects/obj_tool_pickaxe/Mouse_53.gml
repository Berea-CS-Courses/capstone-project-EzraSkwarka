if(!(global.is_paused))
{
	if(!(global.is_swinging))
	{
		global.is_swinging = true;
	
		alarm_set(0, 30);
	
		sprite_index = spr_pickaxe_swing;
		image_index = 0;
	}
}