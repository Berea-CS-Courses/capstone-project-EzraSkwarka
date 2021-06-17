// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_attack(_self) 
{
with (_self) {
switch(_self.mob_type) {
#region Slime
case (node_types.mob_slime):
	//Actions
	timer += 1;
	
	//Conditionals
	if !collision_circle(x, y, attack_radius, obj_player, false, false) { //player got away
		transition_after_animation = true;
	} else {
		transition_after_animation = false;		
	}
	
	if (timer >= 70) { //14 frams @ 12 fps
		if (transition_after_animation) {
			state = mob_states.idle;
			transition_after_animation = false;	
		}
		timer = 0;
	}
	//Animation
	if (sprite_index != spr_mob_slime_attack) {
		sprite_index = spr_mob_slime_attack;
	}
	break;
	#endregion
}
}
}