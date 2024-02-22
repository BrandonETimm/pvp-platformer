if (keyboard_check_pressed(vk_escape)) return true;
for (i = 0 ; i < instance_number(oPlayers) ; i++){
	p = instance_find(oPlayers, i);
	if (p.controllerNum > -1 && gamepad_button_check_pressed(p.controllerNum, gp_face2)) return true;
}
return false;