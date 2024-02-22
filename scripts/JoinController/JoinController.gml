if (controllerNum != -2){
	if (controllerNum != -1 && !gamepad_is_connected(controllerNum)) controllerNum = -1;
	else if (controllerNum == -1){
		if (keyboard_check_pressed(vk_space) && CheckControllers(-2)) controllerNum = -2;
		else{
			var gpNum = gamepad_get_device_count();
			for (var i = 0; i < gpNum; i++;)
			{
				if (gamepad_is_connected(i) && gamepad_button_check_pressed(i, gp_face1) && CheckControllers(i)){
					controllerNum = i;
					return;
				}
			}
		}
	}
}