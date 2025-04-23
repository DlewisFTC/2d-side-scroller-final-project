/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 41CFC671
/// @DnDArgument : "obj" "player_object"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "player_object"
var l41CFC671_0 = false;l41CFC671_0 = instance_exists(player_object);if(!l41CFC671_0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 682D5EEE
	/// @DnDParent : 41CFC671
	exit;}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 2E164133
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1D54B62E
draw_set_font(noone);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0166F6CC
/// @DnDArgument : "x" "60"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-30"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "var" "obj_player.coins"
draw_text(x + 60, y + -30, string("Caption: ") + string(obj_player.coins));