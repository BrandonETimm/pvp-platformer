invinc = false;
if (dashCD > 0) dashCD--;
if (specialCD > 0) specialCD--;
if jumpFrame > 0 jumpFrame--;

Movement(true);

if (place_meeting(x,y+1,oColl)){
	wasOnGround = 5;
	canDash = true;
	dJumped = false;
}
else key_down = false;
if (wasOnGround > 0 and jumpFrame == 0)
{
	wasOnGround--;
	if (key_jump || buffered == 0){
		buffered = -1;
		wasOnGround = 0;
		jumpFrame = 3;
	}
}
if (!dJumped && (key_jump || buffered == 0) && wasOnGround == 0){
	buffered = -1;
	jumpFrame = 3;
	dJumped = true;
}
if (jumpFrame == 1) 
{	
	wasOnGround = 0;
	ysp = -jumpsp;
}

if ((key_dash || buffered == 1) && canDash && dashCD == 0)
{
	buffered = -1;
	if (jumpFrame > 0){
		ysp = -jumpsp;
		jumpFrame = 0;
	}
	if (key_down) statDash = true;
	else statDash = false;
	wasOnGround = 0;
	dashCD = maxDashCD;
	state = PLAYERSTATE.DASHING;
	dashDur = maxDashDur;
	canDash = false;
}
else if((key_special || buffered == 2) && specialCD == 0){
	buffered = -1;
	SetupSpecial();	
}

CollisionCheck();