if (oEditRules.editing == -1){
if (controllerNum == -1){
	if (blinkT > 10)
	{
	if (CheckControllers(-2)) draw_sprite(sJoinSpace, 0, x, y);
	else draw_sprite(sJoin, 0, x, y);
	}
}
else{
	switch(cSelected)
	{
		case 0: draw_sprite_ext(sC1Idle, 0, x, y, 3, 3, 0, c_white, 1); break;
		case 1: draw_sprite_ext(sC2Idle, 0, x, y, 3, 3, 0, c_white, 1); break;
		case 2: draw_sprite_ext(sC3Idle, 0, x, y, 3, 3, 0, c_white, 1); break;
	}
	if (!selected){
		draw_sprite_ext(sPointArrow, 0, x+82, y, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sPointArrow, 0, x-82, y, -1, 1, 0, c_white, 1);
		if (controllerNum == -2){
			draw_sprite_ext(sQuitShift, 0, x-228, y+113, 1, 1, 0, c_white, 1);
			draw_sprite_ext(sSelectSpace, 0, x+228, y+113, 1, 1, 0, c_white, 1);
		}
		else{
			draw_sprite_ext(sQuit, 0, x-228, y+113, 1, 1, 0, c_white, 1);
			draw_sprite_ext(sSelect, 0, x+228, y+113, 1, 1, 0, c_white, 1);
		}
	}
	else if (controllerNum == -2) draw_sprite_ext(sBackShift, 0, x-228, y+113, 1, 1, 0, c_white, 1);
	else draw_sprite_ext(sBack, 0, x-228, y+113, 1, 1, 0, c_white, 1);
}
if (enterName == 1){
	draw_sprite(sNamePad, 0, x, y+131);
	draw_text(x-61, y+16, "AAAAAAAAAAAA");
	draw_text(x-61, y+38, "AAAAAAAAAAAA");
}
draw_text(10 + 20*playerNum, 10, string(controllerNum));
draw_text(10, 30 + 16*playerNum, global.pNames[playerNum]);
}