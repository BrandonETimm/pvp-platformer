state = PLAYERSTATE.FREE;
hit = ds_list_create();
window_set_fullscreen(true);
if (global.scores[playerNum] == -1) instance_destroy();
cSelected = global.chars[playerNum];
controllerNum = global.controllers[playerNum];
pName = global.pNames[playerNum];

switch(cSelected){
	case 0: sprite_index = sC1Idle; break;
	case 1: sprite_index = sC2Idle; break;
	case 2: sprite_index = sC3Idle; break;
}
if (playerNum % 2 == 1) image_xscale = -1;