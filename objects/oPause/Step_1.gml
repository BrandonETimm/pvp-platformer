if (instance_exists(oPlayer1) && c1Conn && oPlayer1.controllerNum > -1 && !gamepad_is_connected(oPlayer1.controllerNum)){
	c1Conn = false;
	oPlayer1.controllerNum = -1;
}
if (instance_exists(oPlayer2) && c2Conn && oPlayer2.controllerNum > -1 && !gamepad_is_connected(oPlayer2.controllerNum)){
	c2Conn = false;
	oPlayer2.controllerNum = -1;
}
if (instance_exists(oPlayer3) && c3Conn && oPlayer3.controllerNum > -1 && !gamepad_is_connected(oPlayer3.controllerNum)){
	c3Conn = false;
	oPlayer3.controllerNum = -1;
}
if (instance_exists(oPlayer4) && c4Conn && oPlayer4.controllerNum > -1 && !gamepad_is_connected(oPlayer4.controllerNum)){
	c4Conn = false;
	oPlayer4.controllerNum = -1;
}