joinedP = 0;
players = 0;
for (i = 0 ; i < instance_number(oCharP) ; i++){
	p = instance_find(oCharP, i);
	if (p.selected) players++;
}
if (players > 1){
	if (oCharP1.controllerNum != -1) joinedP++;
	if (oCharP2.controllerNum != -1) joinedP++;
	if (oCharP3.controllerNum != -1) joinedP++;
	if (oCharP4.controllerNum != -1) joinedP++;
	if (joinedP == players){
		global.controllers[0] = oCharP1.controllerNum;
		global.controllers[1] = oCharP2.controllerNum;
		global.controllers[2] = oCharP3.controllerNum;
		global.controllers[3] = oCharP4.controllerNum;
		global.chars[0] = oCharP1.cSelected;
		global.chars[1] = oCharP2.cSelected;
		global.chars[2] = oCharP3.cSelected;
		global.chars[3] = oCharP4.cSelected;
		if (oCharP1.controllerNum != -1) global.scores[0] = 0;
		if (oCharP2.controllerNum != -1) global.scores[1] = 0;
		if (oCharP3.controllerNum != -1) global.scores[2] = 0;
		if (oCharP4.controllerNum != -1) global.scores[3] = 0;
		room_goto_next();
	}
}