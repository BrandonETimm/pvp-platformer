if (editing != -1){
	for (var i = 0 ; i <= maxRules ; i++){
		if (selected == i) draw_sprite_ext(sRulesItem, 0, 48, 116+64*i-64*offset, 2, 2, 0, c_gray, 1);
		else draw_sprite_ext(sRulesItem, 0, 48, 116+64*i-64*offset, 2, 2, 0, c_white, 1);
		draw_set_valign(fa_middle);
		draw_text(72, 147+64*i-64*offset, rNames[i]);
	}
	if (global.rules[maxRules] == 1) draw_text(72, 147+64*maxRules-64*offset, "ALL OFF");
	else draw_text(72, 147+64*maxRules-64*offset, "ALL ON");
	draw_sprite_ext(sRules, 0, 0, 0, 2, 2, 0, c_white, 1);
}
draw_text(500,500,string(global.rules));
draw_text(300,500,string(selectedLoc));
draw_text(350,500,string(offset));