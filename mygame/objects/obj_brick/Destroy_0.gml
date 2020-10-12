/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 65D065E0
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "2"
var chance = floor(random_range(0, 2 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BA93EB7
/// @DnDArgument : "var" "chance"
if(chance == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2D2AECBD
	/// @DnDParent : 6BA93EB7
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_powers"
	/// @DnDSaveInfo : "objectid" "obj_powers"
	instance_create_layer(x + 0, y + 0, "Instances", obj_powers);
}