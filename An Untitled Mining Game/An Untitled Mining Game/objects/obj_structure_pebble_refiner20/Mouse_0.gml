/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 24CF565B
/// @DnDArgument : "key" "vk_shift"
var l24CF565B_0;
l24CF565B_0 = keyboard_check(vk_shift);
if (l24CF565B_0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 766C1BEE
	/// @DnDParent : 24CF565B
	/// @DnDArgument : "code" "if (distance_to_object(obj_player) <= 16) {$(13_10)	var is_close_enough = true;$(13_10)} else {$(13_10)	is_close_enough = false;$(13_10)}"
	if (distance_to_object(obj_player) <= 16) {
		var is_close_enough = true;
	} else {
		is_close_enough = false;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1554A9A3
	/// @DnDParent : 24CF565B
	/// @DnDArgument : "var" "is_close_enough"
	/// @DnDArgument : "value" "true"
	if(is_close_enough == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 092D8EBA
		/// @DnDParent : 1554A9A3
		/// @DnDArgument : "var" "global.num_pebbles"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "3"
		if(global.num_pebbles >= 3)
		{
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 0480D191
			/// @DnDParent : 092D8EBA
			/// @DnDArgument : "value" "-3"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "global.num_pebbles"
			global.num_pebbles += -3;
		
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 56E5DDF5
			/// @DnDParent : 092D8EBA
			/// @DnDArgument : "code" "shiny_multiplier = floor(1+.1*structure_level);"
			shiny_multiplier = floor(1+.1*structure_level);
		
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 1459AB84
			/// @DnDParent : 092D8EBA
			/// @DnDArgument : "times" "shiny_multiplier"
			repeat(shiny_multiplier)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 521DFB8D
				/// @DnDParent : 1459AB84
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_mat_shiny_rock"
				/// @DnDArgument : "layer" ""Active""
				/// @DnDSaveInfo : "objectid" "obj_mat_shiny_rock"
				instance_create_layer(x + 0, y + 0, "Active", obj_mat_shiny_rock);
			}
		}
	}
}