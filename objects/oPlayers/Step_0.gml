if (controllerNum == -2){
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_down = keyboard_check(ord("S"));
	key_jump = keyboard_check_pressed(vk_space);
	key_dash = keyboard_check_pressed(vk_shift);
	key_special = keyboard_check_pressed(ord("E"));
	key_pause = keyboard_check_pressed(vk_escape);
}
else if (controllerNum != -1){
	key_left = (gamepad_axis_value(controllerNum, gp_axislh) < -0.3 || gamepad_button_check(controllerNum, gp_padl));
	key_right = (gamepad_axis_value(controllerNum, gp_axislh) > 0.3 || gamepad_button_check(controllerNum, gp_padr));
	key_down = (gamepad_axis_value(controllerNum, gp_axislv) > 0.3 || gamepad_button_check(controllerNum, gp_padd));
	key_jump = gamepad_button_check_pressed(controllerNum, gp_face1);
	key_dash = gamepad_button_check_pressed(controllerNum, gp_face3);
	key_special = gamepad_button_check_pressed(controllerNum, gp_face2);
	key_pause = gamepad_button_check_pressed(controllerNum, gp_start);
}
if (oPause.paused == controllerNum){
	if (key_pause || key_special) Unpause();
}
else if (oStageSetup.countdown == 0 && oPause.paused == -1 && oPause.c1Conn && oPause.c2Conn && oPause.c3Conn && oPause.c4Conn){
	if (key_pause){
		oPause.rSelected = 0;
		oPause.paused = controllerNum;
		if (instance_exists(oPlayer1)) oPlayer1.prevAnimSpeed = oPlayer1.image_speed;
		if (instance_exists(oPlayer2)) oPlayer2.prevAnimSpeed = oPlayer2.image_speed;
		if (instance_exists(oPlayer3)) oPlayer3.prevAnimSpeed = oPlayer3.image_speed;
		if (instance_exists(oPlayer4)) oPlayer4.prevAnimSpeed = oPlayer4.image_speed;
		image_speed = 0;
	}
	else{
		switch(state)
		{
			case PLAYERSTATE.FREE: PSFree(); break;
			case PLAYERSTATE.DASHING: PSDash(); break;
			case PLAYERSTATE.SPECIAL: PSSpecial(); break;
			case PLAYERSTATE.DEAD: PSDead(); break;
		}
		if keyboard_check_pressed(ord("0")) room_restart();
		Animation();		
	}
}
