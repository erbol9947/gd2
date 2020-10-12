/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7B44273A
/// @DnDArgument : "x" "8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "global.player_score"
draw_text(8, 8, string("Score: ") + string(global.player_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0E1F1443
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5C8E50ED
/// @DnDArgument : "x" "room_width-8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""High score: ""
/// @DnDArgument : "var" "global.high_score"
draw_text(room_width-8, 8, string("High score: ") + string(global.high_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 393DDB47
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 50B986FC
/// @DnDArgument : "x" "(room_width/2)-((global.player_lives-1)*32)"
/// @DnDArgument : "y" "room_height-32"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDArgument : "number" "global.player_lives"
/// @DnDSaveInfo : "sprite" "spr_lives"
var l50B986FC_0 = sprite_get_width(spr_lives);
var l50B986FC_1 = 0;
for(var l50B986FC_2 = global.player_lives; l50B986FC_2 > 0; --l50B986FC_2) {
	draw_sprite(spr_lives, 0, (room_width/2)-((global.player_lives-1)*32) + l50B986FC_1, room_height-32);
	l50B986FC_1 += l50B986FC_0;
}