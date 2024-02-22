if (place_meeting(x+xsp,y,oColl))
{
	if (dashDur > 5){
		if (!place_meeting(x+xsp,y-12,oColl)) while (place_meeting(x+xsp,y,oColl)) y--;
		else if (!place_meeting(x+xsp,y+12,oColl)) while (place_meeting(x+xsp,y,oColl)) y++;
		else walksp = 0;
	}
	else
	{
		while(!place_meeting(x+sign(xsp),y,oColl)) x+=sign(xsp);
		xsp=0;
		walksp = 0;
	}
}
if dashDur <= 5 x += round(xsp);
else{
	var tempx = 0;
	while(!place_meeting(x+sign(xsp),y,oColl) && tempx < abs(xsp)){
		x+=sign(xsp);
		tempx++;
		Attack();
	}	
}


if (place_meeting(x,y+ysp,oColl))
{
	while(!place_meeting(x,y+sign(ysp),oColl)) y+=sign(ysp);
	ysp=0;
}
y += round(ysp);