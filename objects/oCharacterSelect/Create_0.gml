global.controllers = [-1, -1, -1, -1]
global.chars = [0, 0, 0, 0]
global.pNames = ["P1", "P2", "P3", "P4"];
global.scores = [-1, -1, -1, -1];
global.fontEnd = font_add_sprite_ext(sEndScreenFont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!", true, 8);
global.fontPause = font_add_sprite_ext(sPauseFont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz", true, 2);
global.nameFont = font_add_sprite_ext(sNameFont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!", true, 2);
draw_set_font(global.nameFont);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
names = ds_list_create();
var file = file_text_open_append("playerNames.txt");
if (file == -1) noFile = true;
else{
	file_text_close(file);
	var file = file_text_open_read("playerNames.txt");
	while (!file_text_eoln(file) && namesAmount < 100){
		var name = file_text_readln(file);
		ds_list_add(names, name);
		namesAmount++;
	}
}
window_set_fullscreen(true);