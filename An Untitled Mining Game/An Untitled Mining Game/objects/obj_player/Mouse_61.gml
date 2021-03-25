/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 56B6F009
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.current_tool"
global.current_tool += 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 51BFCE0F
/// @DnDArgument : "expr" "global.current_tool > 2"
if(global.current_tool > 2)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 45CEDC1B
	/// @DnDParent : 51BFCE0F
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.current_tool"
	global.current_tool = 1;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 60080E93
/// @DnDArgument : "script" "scr_tool_check"
/// @DnDArgument : "arg" "global.current_tool"
/// @DnDSaveInfo : "script" "scr_tool_check"
script_execute(scr_tool_check, global.current_tool);