/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7DF4BF19
/// @DnDArgument : "expr" "keyboard_check(vk_right)||gamepad_button_check(0,gp_padr)||(gamepad_axis_value(0,gp_axislh) > 0.2)"
/// @DnDArgument : "var" "controls_input_right"
controls_input_right = keyboard_check(vk_right)||gamepad_button_check(0,gp_padr)||(gamepad_axis_value(0,gp_axislh) > 0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 55E62D08
/// @DnDArgument : "expr" "keyboard_check(vk_left)||gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh) < -0.2)"
/// @DnDArgument : "var" "controls_input_left"
controls_input_left = keyboard_check(vk_left)||gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh) < -0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 043B3549
/// @DnDArgument : "expr" "controls_input_right - controls_input_left"
/// @DnDArgument : "var" "move_x"
move_x = controls_input_right - controls_input_left;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71D5811F
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3E12F006
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l3E12F006_0 = instance_place(x + 0, y + 2, [collision_tilemap]);if ((l3E12F006_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7ECACCA7
	/// @DnDParent : 3E12F006
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 689935BE
	/// @DnDParent : 3E12F006
	var l689935BE_0;l689935BE_0 = keyboard_check_pressed(vk_space);if (l689935BE_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5129688B
		/// @DnDParent : 689935BE
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 111CF084
		/// @DnDParent : 689935BE}

	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 21B8B158
	/// @DnDParent : 3E12F006
	/// @DnDArgument : "btn" "gp_face1"
	var l21B8B158_0 = 0;var l21B8B158_1 = gp_face1;if(gamepad_is_connected(l21B8B158_0) && gamepad_button_check_pressed(l21B8B158_0, l21B8B158_1)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5B43D691
		/// @DnDParent : 21B8B158
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 71F3174B
		/// @DnDParent : 21B8B158}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 59CCB9EA
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E27E81A
	/// @DnDParent : 59CCB9EA
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1ED97348
		/// @DnDParent : 1E27E81A
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 0704C7DD
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, collision_tilemap,4,0,0,walk_speed,jump_speed);

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 273DA63E
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "co.collision_tilemap_death_zone"
var l273DA63E_0 = instance_place(x + 0, y + 2, [co.collision_tilemap_death_zone]);if ((l273DA63E_0 > 0)){	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 78A68CA4
	/// @DnDParent : 273DA63E
	room_restart();}