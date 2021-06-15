state = mob_states.idle;

states_array = [
	scr_enemy_idle,
	scr_enemy_roam,
	scr_enemy_follow,
	scr_enemy_attack
]

timer = 0;

move_spd = .5;
dir = irandom_range(0, 359);
move_x = lengthdir_x(move_spd, dir);
move_y = lengthdir_y(move_spd, dir);

attack_active = false;