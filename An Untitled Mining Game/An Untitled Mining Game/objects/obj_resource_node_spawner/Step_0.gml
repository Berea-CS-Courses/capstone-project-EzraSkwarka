/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70798B87
/// @DnDArgument : "code" "var l4ED14E88_0 = place_empty(x + 0, y + 0);$(13_10)if (l4ED14E88_0)$(13_10){$(13_10)	sprite_index = spr_room_tile_spawner_node;$(13_10)	image_index = 0;$(13_10)$(13_10)	if(!(is_alarm_set))$(13_10)	{$(13_10)		is_alarm_set = true;$(13_10)	$(13_10)		alarm_set(0, 90);$(13_10)	}$(13_10)}$(13_10)$(13_10)var l61A9923A_0 = place_empty(x + 0, y + 0);$(13_10)if (!l61A9923A_0)$(13_10){$(13_10)	sprite_index = spr_room_tile_spawner_node;$(13_10)	image_index = 1;$(13_10)}"
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