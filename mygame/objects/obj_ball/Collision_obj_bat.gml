/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 056151B0
/// @DnDArgument : "x" "other.x"
/// @DnDArgument : "y" "other.y"
direction = point_direction(x, y, other.x, other.y);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 6E2D5BD0
/// @DnDArgument : "direction" "180"
/// @DnDArgument : "direction_relative" "1"
direction += 180;