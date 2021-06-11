// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_call_crafting() 
{
	//Init Passing Vars
	var _struct_ref = 0;
	var _input = 0;
	var _output = 0;
	var _time = 0;
	var _quantity = 1;
	
	//Read from MB
	with (obj_MenuBuilder) {
		_struct_ref = struct_refrence;
		_output = output;
		_time = crafting_time;
		_quantity = item_amount;
	}
	
	//Write to Struct
	with (_struct_ref) {
		if in_use return; //Early exit

		//Check if I need to skip scaling
		var _skip_input_calc = false;
		if ((obj_MenuBuilder.output[@ 0] == "Level up") or (obj_MenuBuilder.output[@ 0] == "Renown")) {
			_skip_input_calc = true;
		}
		
		// Adjust input for quantity
		var _input = [];
		array_copy(_input, 0, obj_MenuBuilder.input, 0, array_length(obj_MenuBuilder.input));
		if !(_skip_input_calc) {
			array_copy(_input, 0, obj_MenuBuilder.input, 0, array_length(obj_MenuBuilder.input));
			var i = 0; repeat (array_length(_input)/2) {
				_input[@ i + 1] = _input[i + 1] * _quantity
				i += 2;
				}
			_time = _time * _quantity;
		}
		//Make Item
		if scr_have_mats(_input) {
			scr_consume_mats(_input)
			in_use = true;
			base_speed = _time;
			wait_time = max(6, base_speed - (6 * structure_level));
			// Adjust output for quantity
			
			if !(_skip_input_calc) {
				var i = 0; repeat (array_length(_output)/2) {
				_output[@ i + 1] = _output[i + 1] * _quantity
				i += 2;
				}
			}
			output = _output
			obj_MenuBuilder.menu_to_draw = 0;
		}
		
	}
}