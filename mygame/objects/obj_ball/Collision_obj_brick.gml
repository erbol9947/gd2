/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 20DA8C91
/// @DnDArgument : "function" "move_bounce_all"
/// @DnDArgument : "arg" "true"
move_bounce_all(true);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 24F6719A
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 72FFA994
/// @DnDArgument : "value" "15"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "player_score"
global.player_score += 15;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49046179
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "10"
if(speed < 10)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 70D89BA1
	/// @DnDParent : 49046179
	/// @DnDArgument : "speed" "0.1"
	/// @DnDArgument : "speed_relative" "1"
	speed += 0.1;
}