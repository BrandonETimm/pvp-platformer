if (state == PLAYERSTATE.DASHING) 
{
	DrawDash();
	image_blend = make_color_rgb(230,230,230);
}
draw_self();
image_blend = make_color_rgb(255,255,255);
draw_set_color(c_white);
draw_text(100+playerNum*100,100,accel);
draw_text(100+playerNum*100,200,xsp);
draw_text(100+playerNum*100,300,walksp);