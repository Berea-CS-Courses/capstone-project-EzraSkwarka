// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_idle(_self) 
{
with (_self) {
	//Actions
	timer++;
	
	//Conditionals
	if (timer >= room_speed * 2) { //every two seconds
		var ran_num = choose(0,1) //flip a coin
		switch (ran_num) {
			case 0: state = mob_states.roam; //heads, wander
			case 1: timer = 0; break; // tails idle
		}
	}
	
	if collision_circle(x, y, 64, obj_player, false, false) { //player spotted
		state = mob_states.follow;
	}
	
	//Animation
	
}
}