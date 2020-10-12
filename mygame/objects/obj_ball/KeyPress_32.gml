/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5BCD9656
/// @DnDArgument : "var" "go"
/// @DnDArgument : "value" "false"
if(go == false)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
	/// @DnDVersion : 1.1
	/// @DnDHash : 5BF1A590
	/// @DnDParent : 5BCD9656
	/// @DnDArgument : "direction" "135,90,45"
	direction = choose(135,90,45);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5A418627
	/// @DnDParent : 5BCD9656
	/// @DnDArgument : "speed" "spd"
	speed = spd;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73F45E6D
	/// @DnDParent : 5BCD9656
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "go"
	go = true;
}