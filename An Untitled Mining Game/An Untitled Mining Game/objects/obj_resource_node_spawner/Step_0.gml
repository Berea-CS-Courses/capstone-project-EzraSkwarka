var l4ED14E88_0 = place_empty(x + 0, y + 0);
if (l4ED14E88_0)
{
	sprite_index = spr_room_tile_spawner_node;
	image_index = 0;

	if(!(is_alarm_set))
	{
		is_alarm_set = true;
	
		alarm_set(0, 90);
	}
}

var l61A9923A_0 = place_empty(x + 0, y + 0);
if (!l61A9923A_0)
{
	sprite_index = spr_room_tile_spawner_node;
	image_index = 1;
}