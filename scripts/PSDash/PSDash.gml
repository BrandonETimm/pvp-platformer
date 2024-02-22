if (cSelected != 2) invinc = true;
if dashDur == 0 state = PLAYERSTATE.FREE;
else dashDur--;

if (!statDash){
	if dashDur <= 5
	{
		xsp = max(xsp/1.2, maxWalkSp)*image_xscale;
		ysp = min(ysp+grv/2,6);
	}
	else
	{
		xsp = dashSp*image_xscale;
		ysp = 0;
	}
}
if (key_jump && buffered == -1) buffered = 0;
else if (key_special && buffered == -1) buffered = 2;
CollisionCheck();