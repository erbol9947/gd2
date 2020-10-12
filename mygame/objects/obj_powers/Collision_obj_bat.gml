/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0F9A3CA1
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 123DD0FF
/// @DnDArgument : "var" "image_index"
if(image_index == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0F73D81A
	/// @DnDApplyTo : other
	/// @DnDParent : 123DD0FF
	/// @DnDArgument : "value" "1.5"
	/// @DnDArgument : "instvar" "15"
	with(other) {
	image_xscale = 1.5;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5226D6FB
	/// @DnDApplyTo : other
	/// @DnDParent : 123DD0FF
	/// @DnDArgument : "steps" "10*room_speed"
	with(other) {
	alarm_set(0, 10*room_speed);
	
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 50606710
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6E6F27A9
	/// @DnDApplyTo : {obj_ball}
	/// @DnDParent : 50606710
	/// @DnDArgument : "speed" "spd"
	with(obj_ball) speed = spd;
}