// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_follow(_self) 
{
with (_self) {
	//Actions
	dir = point_direction(x, y, obj_player.x, obj_player.y);
	move_x = lengthdir_x(move_spd, dir);
	move_y = lengthdir_y(move_spd, dir);
	x += move_x;
	y += move_y;
	
	//Conditionals
	if collision_circle(x, y, 32, obj_player, false, false) { //player in range
		state = mob_states.attack;
	}

	if !collision_circle(x, y, 64, obj_player, false, false) { //player got away
		state = mob_states.idle;
	}
	
	//Animation
}
}