/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 491B7020
/// @DnDArgument : "code" "// If close enough$(13_10)if (distance_to_object(obj_player) <= 16) {$(13_10)	var is_close_enough = true;$(13_10)} else {$(13_10)	is_close_enough = false;$(13_10)}$(13_10)$(13_10)// If you have enough shiny rocks$(13_10)needed_shiny_rocks = floor(power(1.1, structure_level));"
// If close enough
if (distance_to_object(obj_player) <= 16) {
	var is_close_enough = true;
} else {
	is_close_enough = false;
}

// If you have enough shiny rocks
needed_shiny_rocks = floor(power(1.1, structure_level));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 495BDC96
/// @DnDArgument : "var" "is_close_enough"
/// @DnDArgument : "value" "true"
if(is_close_enough == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EA8DCC1
	/// @DnDParent : 495BDC96
	/// @DnDArgument : "var" "global.num_shiny_rocks"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "needed_shiny_rocks"
	if(global.num_shiny_rocks >= needed_shiny_rocks)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 27967442
		/// @DnDParent : 2EA8DCC1
		/// @DnDArgument : "value" "-needed_shiny_rocks"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.num_shiny_rocks"
		global.num_shiny_rocks += -needed_shiny_rocks;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6595EB3B
		/// @DnDParent : 2EA8DCC1
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "structure_level"
		structure_level += 1;
	}
}