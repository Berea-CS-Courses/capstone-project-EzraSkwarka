// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_call_crafting() 
{
	//Init Passing Vars
	var _struct_ref = 0;
	var _input = 0;
	var _output = 0;
	var _time = 0;
	
	//Read from MB
	with (obj_MenuBuilder) {
		_struct_ref = struct_refrence;
		_input = input;
		_output = output;
		_time = crafting_time;
	}
	
	//Write to Struct
	with (_struct_ref) {
		if in_use return; //Early exit
		
		if scr_have_mats(_input) {
			in_use = true;
			base_speed = _time;
			wait_time = max(6, base_speed - (6 * structure_level));
			output = _output
		}
		
	}
}