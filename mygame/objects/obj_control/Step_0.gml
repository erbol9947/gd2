/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 62D220FD
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "obj_brick"
/// @DnDSaveInfo : "object" "obj_brick"
var numOfBricks = instance_number(obj_brick);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 008CD539
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "op" "3"
if(numOfBricks <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 59270C65
	/// @DnDParent : 008CD539
	room_restart();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B498D28
/// @DnDArgument : "var" "gameover"
/// @DnDArgument : "value" "true"
if(gameover == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 66DE1B81
	/// @DnDParent : 2B498D28
	/// @DnDArgument : "key" "vk_anykey"
	var l66DE1B81_0;
	l66DE1B81_0 = keyboard_check_pressed(vk_anykey);
	if (l66DE1B81_0)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 52177674
		/// @DnDParent : 66DE1B81
		/// @DnDArgument : "var" "player_score"
		global.player_score = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0D5DB28D
		/// @DnDParent : 66DE1B81
		/// @DnDArgument : "value" "3"
		/// @DnDArgument : "var" "player_lives"
		global.player_lives = 3;
	
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0A19D69A
		/// @DnDParent : 66DE1B81
		room_restart();
	}
}