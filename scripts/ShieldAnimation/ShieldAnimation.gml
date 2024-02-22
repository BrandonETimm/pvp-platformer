if image_speed != -1 image_speed = 1;
switch(state)
{
	case PLAYERSTATE.FREE:
	{
		image_speed = 1;
		if (place_meeting(x,y+1,oColl)){
			if (jumpFrame > 0)
			{
				if xsp != 0 sprite_index = sC1RunJump;
				else sprite_index = sC1Jump;
			}
			else
			{
				if xsp != 0 sprite_index = sC1Run;
				else sprite_index = sC1Idle;
			}
		}
		else{
			if (image_index == 1) image_speed = 0;
			if ysp < 0 sprite_index = sC1JUp;
			else sprite_index = sC1JDown;
		}
		break;
	}
	case PLAYERSTATE.DASHING: 
	{
		image_speed = 1;
		if (statDash) sprite_index = sC1StatDash; 
		else sprite_index = sC1Dash; 
		break;	
	}
	case PLAYERSTATE.SPECIAL:
	{
		if (airSpec) sprite_index = sC1JSpecial;
		else sprite_index = sC1Special;
		break;	
	}
}
if (state != PLAYERSTATE.SPECIAL){
	if xsp > 0 image_xscale = 1;
	else if xsp < 0 image_xscale = -1;
}