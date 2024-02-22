if (!c1Conn || !c2Conn || !c3Conn || !c4Conn){
	DrawDark();
	draw_set_font(global.fontPause);
	draw_set_color(c_gray);
	if (!c1Conn) draw_text(480, 225, oPlayer1.pName);
	else if (!c2Conn) draw_text(480, 225, oPlayer2.pName);
	else if (!c3Conn) draw_text(480, 225, oPlayer3.pName);
	else draw_text(480, 225, oPlayer4.pName);
	draw_text(480,255,"Disconnected");
	draw_text(480,295,"Press A To Rejoin");
	draw_text(480,335,"Press B or Escape To");
	draw_text(480,375,"Continue Without Rejoining");
}
else if (paused != -1){
	DrawDark();
	draw_set_font(global.fontPause);
	draw_set_color(c_gray);
	switch (paused){
		case oPlayer1.controllerNum: draw_text(480, 215, oPlayer1.pName); break;
		case oPlayer2.controllerNum: draw_text(480, 215, oPlayer2.pName); break;
		case oPlayer3.controllerNum: draw_text(480, 215, oPlayer3.pName); break;
		case oPlayer4.controllerNum: draw_text(480, 215, oPlayer4.pName); break;
	}
	
	draw_text(480,245,"Paused");
	if (rSelected == 0) draw_set_color(c_white);
	draw_text(480,285,"Resume");
	if (rSelected == 1) draw_set_color(c_white);
	else draw_set_color(c_gray);
	draw_text(480,325,"Reconnect Controllers");
	if (rSelected == 2) draw_set_color(c_white);
	else draw_set_color(c_gray);
	draw_text(480,365,"Exit");
}