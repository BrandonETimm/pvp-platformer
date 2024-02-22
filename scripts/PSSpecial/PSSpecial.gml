if specialDur > 0 specialDur--;
else state = PLAYERSTATE.FREE;
AttackSpecial();
Movement(false);
CollisionCheck();
if (key_jump && buffered == -1) buffered = 0;
else if (key_dash && buffered == -1) buffered = 1;