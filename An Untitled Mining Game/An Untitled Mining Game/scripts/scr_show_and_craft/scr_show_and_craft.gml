// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_show_and_craft(struct_id) 
{
if struct_id.in_use and (struct_id.current_step < struct_id.wait_time) {
	//Draw Pie
	struct_id.current_step++;
	draw_pie(struct_id.x ,struct_id.y , struct_id.current_step, struct_id.wait_time, [c_red, c_lime], 15, .5)
	
	//Create Output
	if (struct_id.current_step >= struct_id.wait_time) {
		struct_id.in_use = false;
		struct_id.current_step = 0;
		
		//Level Up Struct
			if (struct_id.output[@ 0] == "Level up") { // needs to recalc input
				struct_id.structure_level += 1;
			
		//Renown Shop and Relics
			} else if (struct_id.output[@ 0] == "Renown") {
				obj_relics_menu.pick_power += 1;
				
		//Normal
			} else {
				var i = 0; repeat (array_length(struct_id.output)/2) {
					var repeat_count = max(((6 * struct_id.structure_level)) div struct_id.base_speed, 1);
					repeat (repeat_count) {
						repeat (struct_id.output[@ i + 1]) {
							scr_create_obj_item(struct_id.output[@ i], struct_id.x, struct_id.y);
						}
					}
					i += 2;
					}
		}
	}
}
}