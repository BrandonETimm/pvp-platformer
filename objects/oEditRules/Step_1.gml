if (editing != -1){
	if (editing == -2){
		key_back = keyboard_check_pressed(vk_escape);
		key_up = keyboard_check(ord("W"));
		key_down = keyboard_check(ord("S"));
		key_toggle = keyboard_check_pressed(vk_space);
	}
	else{
		key_back = gamepad_button_check_pressed(editing, gp_start);
		key_up = gamepad_axis_value(controllerNum, gp_axislv) < -0.3 || gamepad_button_check(controllerNum, gp_padu);
		key_down = gamepad_axis_value(controllerNum, gp_axislv) > 0.3 || gamepad_button_check(controllerNum, gp_padd);
		key_toggle = gamepad_button_check_pressed(editing, gp_face1);
	}
	if (key_back){
		holdCount = 20;
		moveFrame = 0;
		editing = -3;
		selectedLoc = 0;
		selected = 0;
		offset = 0;
		layer_set_visible("RulesBG", false);
	}
	else{
		if (holdCount == 20){
			if (key_up){
				if (selected == 0) selected = maxRules;
				else selected--;
				holdUp = true;
				holdCount--;
				if (selectedLoc == 0) offset--;
				selectedLoc = max(selectedLoc-1, 0);
				if (selected == maxRules){
					offset = maxRules-5;
					selectedLoc = 5;
				}
			}
			else if (key_down){
				if (selected == maxRules) selected = 0;
				else selected++;
				holdUp = false;
				holdCount--;
				if (selectedLoc == 5) offset++;
				selectedLoc = min(selectedLoc+1, 5);
				if (selected == 0){
					offset = 0;
					selectedLoc = 0;
				}
			}
			if (key_toggle){
				global.rules[selected] = !global.rules[selected]
				if (selected == maxRules) for (var i = 0 ; i < maxRules ; i++) global.rules[i] = global.rules[selected];
			}
		}
		else if (holdCount > 0 && ((key_up && holdUp) || (key_down && !holdUp))) holdCount--;
		else if (holdCount != 0) holdCount = 20;
		else{
			moveFrame++;
			if ((!key_up && holdUp) || (!key_down && !holdUp)){
				holdCount = 20;
				moveFrame = 0;
			}
			else if (moveFrame == 4){
				moveFrame = 0;
				if (holdUp && selected != 0){
					selected--;
					if (selectedLoc == 0) offset--;
					selectedLoc = max(selectedLoc-1, 0);
				}
				else if (!holdUp && selected != maxRules){
					selected++;
					if (selectedLoc == 5) offset++;
					selectedLoc = min(selectedLoc+1, 5);
				}
			}
			if ((holdUp && selected == 0 || (!holdUp && selected == maxRules)) && key_toggle) global.rules[selected] = !global.rules[selected]
		}
	}
}