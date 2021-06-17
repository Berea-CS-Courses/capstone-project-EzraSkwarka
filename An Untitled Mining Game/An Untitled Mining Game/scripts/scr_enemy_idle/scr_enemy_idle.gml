// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_idle(_self) 
{
with (_self) {
switch (_self.mob_type) {
#region Slime
case (node_types.mob_slime):
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
	
	if collision_circle(x, y, follow_radius, obj_player, false, false) { //player spotted
		state = mob_states.follow;
	}
	
	//Animation
	if (sprite_index != spr_mob_slime_idle) {
		sprite_index = spr_mob_slime_idle;
	}
	break;
	#endregion
	
}
}
}