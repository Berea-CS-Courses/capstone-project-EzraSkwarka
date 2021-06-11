// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_mat_array_to_text(_array) 
{
var _output_string = "";
name_array = [
	"none",
	"Rock",
	"Shiny Rock",
	"Wood",
	"Coal",
	"Coral",
	"Iron Ore",
	"Iron Ingot",
	"Copper Ore",
	"Copper Ingot",
	"Steel Ore", ///yes I know steel is an alloy
	"Steel Ingot",
	"Mythril Ore",
	"Mythril Ingot",
	"Uranium Ore",
	"Uranium Ingot",
	"Molten Ore",
	"Molten Ingot"
]
var i = 0; repeat (array_length(_array)/2) {
	_output_string += (string(_array[i+1]) + "x ")
	_output_string += name_array[_array[i]];
	i += 2;
	if (i < array_length(_array)) {
		_output_string += ", "
	}
}
return _output_string
}