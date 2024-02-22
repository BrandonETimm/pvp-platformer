if (controllerNum == -2){
	if (keyboard_check_pressed(ord("D")) && !selected){
		if (cSelected == maxC) cSelected = 0;
		else cSelected++;
	}
	else if (keyboard_check_pressed(ord("A")) && !selected){
		if (cSelected == 0) cSelected = maxC;
		else cSelected--;
	}
	else if (keyboard_check_pressed(vk_shift)){
		if (!selected) controllerNum = -1;
		selected = false;
	}
	else if (keyboard_check_pressed(vk_space)){
		AllLockedIn();
		selected = true;
	}
	else if (keyboard_check_pressed(ord("Q"))) enterName = 1;
	else if (keyboard_check_pressed(vk_escape)){
		layer_set_visible("RulesBG", true);
		oEditRules.editing = -2;
	}
}
else{
	if ((gamepad_axis_value(controllerNum, gp_axislh) > 0.3 || gamepad_button_check_pressed(controllerNum, gp_padr)) && !cRecent && !selected){
		if (cSelected == maxC) cSelected = 0;
		else cSelected++;
		cRecent = true;
	}
	else if ((gamepad_axis_value(controllerNum, gp_axislh) < -0.3 || gamepad_button_check_pressed(controllerNum, gp_padl)) && !cRecent && !selected){
		if (cSelected == 0) cSelected = maxC;
		else cSelected--;
		cRecent = true;
	}
	if (abs(gamepad_axis_value(controllerNum, gp_axislh)) < 0.3) cRecent = false;
	if (gamepad_button_check_pressed(controllerNum, gp_face2)){
		if (!selected) controllerNum = -1;
		else selected = false;
	}
	else if (gamepad_button_check_pressed(controllerNum, gp_face1)){
		AllLockedIn();
		selected = true;
	}
	else if (gamepad_button_check_pressed(controllerNum, gp_face4)) enterName = 1;
	else if (gamepad_button_check_pressed(controllerNum, gp_start)){
		layer_set_visible("RulesBG", true);
		oEditRules.editing = controllerNum;
	}
}