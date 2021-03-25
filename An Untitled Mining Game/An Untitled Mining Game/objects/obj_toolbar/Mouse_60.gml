/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6119BA70
/// @DnDArgument : "value" "-1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.current_tool"
global.current_tool += -1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 480403CE
/// @DnDArgument : "expr" "global.current_tool < 1"
if(global.current_tool < 1)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7A5F5F5C
	/// @DnDParent : 480403CE
	/// @DnDArgument : "value" "2"
	/// @DnDArgument : "var" "global.current_tool"
	global.current_tool = 2;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7EDB855C
/// @DnDArgument : "script" "scr_tool_check"
/// @DnDSaveInfo : "script" "scr_tool_check"
script_execute(scr_tool_check);