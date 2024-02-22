if (oEditRules.editing == -1){
if (controllerNum == -1){
	global.pNames[playerNum] = "P" + string(playerNum+1);
	cSelected = 0;
	enterName = 0;
	nameHovered = -1;
	btnHover = 0;
	newNameLen = 0;
}
else if (enterName == 0) CharacterChange();
else if (enterName == 1) NameSelect();
else NameAdd();
if blinkT > 0 blinkT--;
else blinkT = 60;
JoinController();
}