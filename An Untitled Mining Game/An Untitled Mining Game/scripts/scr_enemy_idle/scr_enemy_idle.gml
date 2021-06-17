// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_idle(_self) 
{
if global.is_paused exit;

with (_self) {
switch (_self.mob_type) {
#region Slimes
case (node_types.mob_slime_forest):
case (node_types.mob_slime_artic):
case (node_types.mob_slime_molten):
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
	switch(mob_type) {
		case (node_types.mob_slime_forest):
			if (sprite_index != spr_mob_slime_idle) {
				sprite_index = spr_mob_slime_idle;
			}
		break;
		
		case (node_types.mob_slime_artic):
			if (sprite_index != spr_mob_slime_idle_artic) {
				sprite_index = spr_mob_slime_idle_artic;
			}
		break;
		
		case (node_types.mob_slime_molten):
			if (sprite_index != spr_mob_slime_idle_molten) {
				sprite_index = spr_mob_slime_idle_molten;
			}
		break;
	}
	break;
	#endregion
	
}
}
}