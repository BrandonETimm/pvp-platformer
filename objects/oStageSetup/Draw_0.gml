if countdown > 0 countdown--;
draw_set_font(global.fontEnd);
draw_set_color(c_blue);
if (countdown > 25) draw_text(480, 270, string(ceil(countdown/25)-1));
else if (countdown > 0) draw_text(480, 270, "GO");