/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2DEBBC15
/// @DnDArgument : "var" "bbox_left"
/// @DnDArgument : "op" "1"
if(bbox_left < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1E5B1488
	/// @DnDParent : 2DEBBC15
	/// @DnDArgument : "speed" "-hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = -hspeed;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E03FA4B
/// @DnDArgument : "var" "bbox_right"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_width"
if(bbox_right > room_width)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3263EB3B
	/// @DnDParent : 1E03FA4B
	/// @DnDArgument : "speed" "-hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = -hspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 5AB7F43F
	/// @DnDInput : 2
	/// @DnDParent : 1E03FA4B
	/// @DnDArgument : "value" "xprevious"
	/// @DnDArgument : "value_1" "yprevious"
	/// @DnDArgument : "instvar_1" "1"
	x = xprevious;
	y = yprevious;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58DF7B19
/// @DnDArgument : "var" "bbox_top"
/// @DnDArgument : "op" "1"
if(bbox_top < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3C1BFFE0
	/// @DnDInput : 2
	/// @DnDParent : 58DF7B19
	/// @DnDArgument : "value" "xprevious"
	/// @DnDArgument : "value_1" "yprevious"
	/// @DnDArgument : "instvar_1" "1"
	x = xprevious;
	y = yprevious;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4716635C
	/// @DnDParent : 58DF7B19
	/// @DnDArgument : "speed" "-vspeed"
	/// @DnDArgument : "type" "2"
	vspeed = -vspeed;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F9FA563
/// @DnDArgument : "var" "bbox_bottom"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height"
if(bbox_bottom > room_height)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 4D8E0A61
	/// @DnDParent : 0F9FA563
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "player_lives"
	global.player_lives += -1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3127A3FF
	/// @DnDParent : 0F9FA563
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B10A4EA
	/// @DnDParent : 0F9FA563
	/// @DnDArgument : "var" "global.player_lives"
	/// @DnDArgument : "op" "3"
	if(global.player_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6946EC9D
		/// @DnDApplyTo : {obj_control}
		/// @DnDParent : 0B10A4EA
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "gameover"
		with(obj_control) {
		gameover = true;
		
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 663EC0A2
		/// @DnDParent : 0B10A4EA
		/// @DnDArgument : "var" "global.player_score"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "global.high_score"
		if(global.player_score > global.high_score)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 647594B6
			/// @DnDParent : 663EC0A2
			/// @DnDArgument : "expr" "global.player_score"
			/// @DnDArgument : "var" "global.high_score"
			global.high_score = global.player_score;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 60BF06C0
	/// @DnDParent : 0F9FA563
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3BE6719F
		/// @DnDParent : 60BF06C0
		/// @DnDArgument : "xpos" "xstart"
		/// @DnDArgument : "ypos" "ystart"
		/// @DnDArgument : "objectid" "obj_ball"
		/// @DnDSaveInfo : "objectid" "obj_ball"
		instance_create_layer(xstart, ystart, "Instances", obj_ball);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7568DC6E
		/// @DnDApplyTo : {obj_bat}
		/// @DnDParent : 60BF06C0
		/// @DnDArgument : "expr" "xstart"
		/// @DnDArgument : "var" "x"
		with(obj_bat) {
		x = xstart;
		
		}
	}
}