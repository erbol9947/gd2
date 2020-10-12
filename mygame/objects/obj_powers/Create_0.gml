/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 25B15434
/// @DnDInput : 2
/// @DnDArgument : "var" "frame"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option_1" "1"
var frame = choose(0, 1);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 0F050FD9
/// @DnDArgument : "value" "frame"
/// @DnDArgument : "instvar" "11"
image_index = frame;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 2ADA693A
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 08E5BB18
/// @DnDArgument : "direction" "270"
direction = 270;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 748B706A
/// @DnDArgument : "speed" "5"
speed = 5;