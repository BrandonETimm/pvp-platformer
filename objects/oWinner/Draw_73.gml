aliveCount = 0;
if instance_exists(oPlayer1) and oPlayer1.state != PLAYERSTATE.DEAD aliveCount++;
if instance_exists(oPlayer2) and oPlayer2.state != PLAYERSTATE.DEAD aliveCount++;
if instance_exists(oPlayer3) and oPlayer3.state != PLAYERSTATE.DEAD aliveCount++;
if instance_exists(oPlayer4) and oPlayer4.state != PLAYERSTATE.DEAD aliveCount++;
draw_set_font(global.fontEnd);
draw_set_color(c_blue);

if (aliveCount <= 1){
	if (endTimer > 0) endTimer--;
	else if (endTimer == -1) endTimer = 180;
	if (endTimer == 0){
		room_goto(2+random_range(0, roomCount-1));	
	}
	if (aliveCount == 0){
		draw_text(200,300,"4BGIUEARBGIUAREBIUG");	
	}
	else{
		draw_text(200,300,"ABCDEFGH");	
	}
}