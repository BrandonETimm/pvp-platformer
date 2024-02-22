if (keyboard_check_pressed(vk_space) && CheckControllersGame(-2)) return -2;
var gpNum = gamepad_get_device_count();
for (var i = 0; i < gpNum; i++;)
{
	if (gamepad_is_connected(i) && gamepad_button_check_pressed(i, gp_face1) && CheckControllersGame(i)){
		return i;
	}
}
return -1;