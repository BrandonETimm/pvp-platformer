switch (cSelected){
	case 0:	
	for (var i = 0 ; i < 5 ; i++){
		draw_sprite_ext(sC1Dash, 0, x-(abs(xsp)-8+8*i)*sign(xsp), y, sign(xsp), 1, 0, c_silver, 0.5 - 0.1*i);
	}
	break;
	case 1:	
	for (var i = 0 ; i < 5 ; i++){
		draw_sprite_ext(sC2Dash, 0, x-(abs(xsp)-8+8*i)*sign(xsp), y, sign(xsp), 1, 0, c_silver, 0.5 - 0.1*i);
	}
	break;
	case 2:	
	for (var i = 0 ; i < 5 ; i++){
		draw_sprite_ext(sC3Dash, 0, x-(abs(xsp)-8+8*i)*sign(xsp), y, sign(xsp), 1, 0, c_silver, 0.5 - 0.1*i);
	}
	break;
}