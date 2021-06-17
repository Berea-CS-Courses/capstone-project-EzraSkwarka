state = mob_states.idle;

states_array = [
	scr_enemy_idle,
	scr_enemy_roam,
	scr_enemy_follow,
	scr_enemy_attack
]

timer = 0;

mob_type = node_types.mob_slime;

follow_radius = 32;
attack_radius = 16;

spr_to_draw = 0;
max_health = 0;
_health = 2;

//Internal
bar_offset_x = -16;
bar_offset_y = 10;
bar_width = 30;
bar_height = 6;

time_since_damaged = 0;
timer_cooldown = 180; //tics


tool_to_use = tools.pickaxe;
region = region_list.forest;
drop_array = [item.shiny_rock, 2];

move_spd = .5;
dir = irandom_range(0, 359);
move_x = lengthdir_x(move_spd, dir);
move_y = lengthdir_y(move_spd, dir);

attack_active = false;