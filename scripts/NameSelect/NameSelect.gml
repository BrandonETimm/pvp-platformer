if (controllerNum == -2){
	if (keyboard_check_pressed(ord("W"))) nameHovered = min(nameHovered-1, -1);
	else if (keyboard_check_pressed(ord("S"))) nameHovered = max(nameHovered+1, oCharacterSelect.namesAmount-1);
	else if (keyboard_check_pressed(vk_space)){
		if (nameHovered == -1) enterName = 2;
		else{
			global.pNames[playerNum] = oCharacterSelect.names[nameHovered];
			enterName = 0;
		}
	}
	else if (keyboard_check_pressed(ord("Q")) || keyboard_check_pressed(vk_escape)) enterName = 0;
}
else{
	if ((gamepad_axis_value(controllerNum, gp_axislh) > 0.3 || gamepad_button_check_pressed(controllerNum, gp_padr)) && !cRecent){
		nameHovered = min(nameHovered-1, -1);
		cRecent = true;
	}
	else if ((gamepad_axis_value(controllerNum, gp_axislh) < -0.3 || gamepad_button_check_pressed(controllerNum, gp_padl)) && !cRecent && !selected){
		nameHovered = max(nameHovered+1, oCharacterSelect.namesAmount-1);
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
	else if (gamepad_button_check_pressed(controllerNum, gp_face4)) enterName = 0;
}