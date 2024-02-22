if image_speed != -1 image_speed = 1;
switch(state)
{
	case PLAYERSTATE.FREE:
	{
		image_speed = 1;
		if (place_meeting(x,y+1,oColl)){
			if (jumpFrame > 0)
			{
				if xsp != 0 sprite_index = sC2RunJump;
				else sprite_index = sC2Jump;
			}
			else
			{
				if xsp != 0 sprite_index = sC2Run;
				else sprite_index = sC2Idle;
			}
		}
		else{
			if (image_index == 1) image_speed = 0;
			if ysp < 0 sprite_index = sC2JUp;
			else sprite_index = sC2JDown;
		}
		break;
	}
	case PLAYERSTATE.DASHING: 
	{
		image_speed = 1;
		if (statDash) sprite_index = sC2StatDash; 
		else sprite_index = sC2Dash; 
		break;	
	}
	case PLAYERSTATE.SPECIAL:
	{
		sprite_index = sC2Special;
		break;	
	}
}
if (state != PLAYERSTATE.SPECIAL){
	if xsp > 0 image_xscale = 1;
	else if xsp < 0 image_xscale = -1;
}