/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 60FD32A6
/// @DnDArgument : "code" "if (distance_to_object(obj_player) <= 16) {$(13_10)	var is_close_enough = true;$(13_10)} else {$(13_10)	is_close_enough = false;$(13_10)}"
if (distance_to_object(obj_player) <= 16) {
	var is_close_enough = true;
} else {
	is_close_enough = false;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3FF8A858
/// @DnDArgument : "var" "is_close_enough"
/// @DnDArgument : "value" "true"
if(is_close_enough == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A5E4F91
	/// @DnDParent : 3FF8A858
	/// @DnDArgument : "var" "global.num_pebbles"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "3"
	if(global.num_pebbles >= 3)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 6330289D
		/// @DnDParent : 4A5E4F91
		/// @DnDArgument : "value" "-3"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.num_pebbles"
		global.num_pebbles += -3;
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 04F98188
		/// @DnDParent : 4A5E4F91
		/// @DnDArgument : "code" "shiny_multiplier = floor(1+.1*structure_level);"
		shiny_multiplier = floor(1+.1*structure_level);
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 295BB0F4
		/// @DnDParent : 4A5E4F91
		/// @DnDArgument : "times" "shiny_multiplier"
		repeat(shiny_multiplier)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 59AAEF05
			/// @DnDParent : 295BB0F4
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_mat_shiny_rock"
			/// @DnDArgument : "layer" ""Active""
			/// @DnDSaveInfo : "objectid" "obj_mat_shiny_rock"
			instance_create_layer(x + 0, y + 0, "Active", obj_mat_shiny_rock);
		}
	}
}