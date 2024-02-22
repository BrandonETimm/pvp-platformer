var allconnect = true;
if (instance_exists(oPlayer1)) allconnect = min(allconnect, oPlayer1.controllerNum != argument0);
if (instance_exists(oPlayer2)) allconnect = min(allconnect, oPlayer2.controllerNum != argument0);
if (instance_exists(oPlayer3)) allconnect = min(allconnect, oPlayer3.controllerNum != argument0);
if (instance_exists(oPlayer4)) allconnect = min(allconnect, oPlayer4.controllerNum != argument0);
return allconnect