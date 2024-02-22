if (!c1Conn){
	contr = JoinControllerGame();
	if (contr != -1){
		oPlayer1.controllerNum = contr;
		global.controllers[0] = contr;
		c1Conn = true;
		paused = -1;
	}
	else c1Conn = LeaveReconnect();
}
else if (!c2Conn){
	contr = JoinControllerGame();
	if (contr != -1){
		oPlayer2.controllerNum = contr;
		global.controllers[1] = contr;
		c2Conn = true;
		paused = -1;
	}
	else c2Conn = LeaveReconnect();
}
else if (!c3Conn){
	contr = JoinControllerGame();
	if (contr != -1){
		oPlayer3.controllerNum = contr;
		global.controllers[2] = contr;
		c3Conn = true;
		paused = -1;
	}
	else c3Conn = LeaveReconnect();
}
else if (!c4Conn){
	contr = JoinControllerGame();
	if (contr != -1){
		oPlayer4.controllerNum = contr;
		global.controllers[3] = contr;
		c4Conn = true;
		paused = -1;
	}
	else c4Conn = LeaveReconnect();
}
else if (paused == -2){
	if (keyboard_check_pressed(ord("W"))) rSelected = max(0,rSelected-1);
	else if (keyboard_check_pressed(ord("S"))) rSelected = min(2,rSelected+1);
	if (keyboard_check_pressed(vk_space)){
		if (rSelected == 0) Unpause();
		else if (rSelected == 1) DCContr();
		else room_goto(0);
	}
}
else if (paused != -1){
	if (!sRecent && gamepad_axis_value(paused, gp_axislv) < -0.3 || gamepad_button_check_pressed(paused, gp_padu)){
		rSelected = max(0,rSelected-1);
		sRecent = true;
	}
	else if (!sRecent && gamepad_axis_value(paused, gp_axislv) > 0.3 || gamepad_button_check_pressed(paused, gp_padd)){
		rSelected = min(2,rSelected+1);
		sRecent = true;
	}
	if (abs(gamepad_axis_value(paused, gp_axislv)) < 0.3) sRecent = false;
	if (gamepad_button_check_pressed(paused, gp_face1)){
		if (rSelected == 0) Unpause();
		else if (rSelected == 1) DCContr();
		else room_goto(0);
	}
}