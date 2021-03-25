/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 78D4F13D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "not" "1"
var l78D4F13D_0 = place_empty(x + 0, y + 0);
if (l78D4F13D_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 555DA8DD
	/// @DnDParent : 78D4F13D
	/// @DnDArgument : "expr" "(random_number >= 75)"
	if((random_number >= 75))
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3F1F88A3
		/// @DnDParent : 555DA8DD
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_node_tree"
		/// @DnDArgument : "layer" ""Active""
		/// @DnDSaveInfo : "objectid" "obj_node_tree"
		instance_create_layer(x + 0, y + 0, "Active", obj_node_tree);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6AF1054D
	/// @DnDParent : 78D4F13D
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 73859674
		/// @DnDParent : 6AF1054D
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_node_rock"
		/// @DnDArgument : "layer" ""Active""
		/// @DnDSaveInfo : "objectid" "obj_node_rock"
		instance_create_layer(x + 0, y + 0, "Active", obj_node_rock);
	}

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 29451DBB
	/// @DnDParent : 78D4F13D
	/// @DnDArgument : "var" "random_number"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "100"
	random_number = floor(random_range(0, 100 + 1));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F1A84B3
	/// @DnDParent : 78D4F13D
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "is_alarm_set"
	is_alarm_set = false;
}

/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 37EBA40C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
var l37EBA40C_0 = place_empty(x + 0, y + 0);
if (!l37EBA40C_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1A11AD8B
	/// @DnDParent : 37EBA40C
	/// @DnDArgument : "steps" "90"
	alarm_set(0, 90);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78506BA7
	/// @DnDParent : 37EBA40C
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "is_alarm_set"
	is_alarm_set = true;
}