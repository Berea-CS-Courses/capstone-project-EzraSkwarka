// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_roam(_self) 
{
with (_self) {
	//Actions
	timer++;
	x += move_x;
	y += move_y;
	
	//Conditionals
	if (timer >= room_speed * 2) { //every two seconds
		var ran_num = choose(0,1) //flip a coin
		switch (ran_num) {
			case 0: state = mob_states.idle;	//heads, idle
			case 1:								// tails change direction
				timer = 0; 
				dir = irandom_range(0, 359);
				move_x = lengthdir_x(move_spd, dir);
				move_y = lengthdir_y(move_spd, dir);
				break; 
		}
	}

	if collision_circle(x, y, 64, obj_player, false, false) { //player spotted
		state = mob_states.follow;
	}
	
	//Animation
}	
}