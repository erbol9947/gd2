/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 1C447D4F
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 2C871D53
/// @DnDInput : 6
/// @DnDArgument : "var" "colour"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "c_red"
/// @DnDArgument : "option_1" "c_blue"
/// @DnDArgument : "option_2" "c_yellow"
/// @DnDArgument : "option_3" "c_green"
/// @DnDArgument : "option_4" "c_fuchsia"
/// @DnDArgument : "option_5" "c_orange"
var colour = choose(c_red, c_blue, c_yellow, c_green, c_fuchsia, c_orange);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 6CEB1464
/// @DnDArgument : "value" "colour"
/// @DnDArgument : "instvar" "14"
image_blend = colour;