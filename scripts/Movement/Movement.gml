movex = key_right - key_left;
if (argument0)
{
	if movex != 0 && !key_down
	{
		if accel != 0 && sign(accel) != sign(movex)
		{
			accel = 0;
		}
		if place_meeting(x,y+1,oColl) accel = sign(movex)*min(abs(accel)+0.75, maxAccel*abs(movex));
		else accel = sign(movex)*min(abs(accel)+0.5, maxAccel*abs(movex));
		
		if walksp == 0 walksp += accel;
		else walksp = sign(walksp)*min(abs(walksp+accel), maxWalkSp);
	}
	else
	{
		if place_meeting(x,y+1,oColl) accel -= 0.75*sign(accel);
		else accel -= 0.5*sign(accel);
		if place_meeting(x,y+1,oColl) walksp -= 1.75*sign(walksp);
		else walksp -= 1.5*sign(walksp);
	}
	if abs(walksp) < 1 walksp = 0;
	if abs(accel) < 0.35 accel = 0;
	
	xsp = walksp;
}
else
{
	
	if place_meeting(x,y+1,oColl) walksp = round(walksp/1.5);
	else{
		if accel != 0 && sign(accel) != sign(movex)
		{
			accel = 0;
		}
		accel = sign(movex)*min(abs(accel)+0.3, maxAccel*abs(movex));
		if walksp == 0 walksp += accel;
		else walksp = sign(walksp)*min(abs(walksp+accel), maxWalkSp);
	}
	if abs(walksp) <= 1 walksp = 0;
	xsp = walksp;
}
ysp = min(ysp+grv,12);


