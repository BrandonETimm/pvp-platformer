if (cSelected < 2){
	if (jumpFrame != 0){
		wasOnGround = 0;
		ysp = -jumpsp;
		jumpFrame = 0;
	}
	if (cSelected == 0){
		specialDur = 20;
		if (place_meeting(x,y+1,oColl)) airSpec = false;
		else airSpec = true;
	}
	else{
		if (ysp < 0)
		{
			image_speed = -1;
			image_index = 7;
		}
		else
		{
			image_speed = 1;
			image_index = 0;
		}
		specialDur = 23;
	}
}
else if (cSelected == 3){
	if (jumpFrame != 0){
		wasOnGround = 0;
		ysp = -jumpsp;
		jumpFrame = 0;
	}
}
state = PLAYERSTATE.SPECIAL;
specialCD = 20;