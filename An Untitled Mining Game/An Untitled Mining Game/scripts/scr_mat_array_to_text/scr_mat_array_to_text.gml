// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_mat_array_to_text(_array) 
{
var _output_string = "";

var i = 0; repeat (array_length(_array)/2) {
	_output_string += (string(_array[i+1]) + "x ")
	if (_array[i] == -2) {
		_output_string += "Renown";
	} else if (_array[i] > array_length(obj_inventory.name_array)){ // out of range
		_output_string += "UNDEF";
	} else {
		_output_string += obj_inventory.name_array[_array[i]];
	}
	i += 2;
	if (i < array_length(_array)) {
		_output_string += ", "
	}
}
return _output_string
}