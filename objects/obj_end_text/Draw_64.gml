/// @description Insert description here
timer += 1;


if (timer > 180 )
{
	if (alpha_black < 1 )
	{
		alpha_black += 0.01;
	}
}


draw_sprite_pos(spr_black,image_index,0,0,room_width + 50,0,room_width + 50,room_height,0,room_height,alpha_black);

if (timer > 360)
{
	
	if ( alpha < 1)
	{
		alpha += 0.005;
	}
	
	if (x_plus < 0)
	{
		x_plus += 0.5;
	}
	
	draw_set_font(font_game)
	draw_text_transformed_color(x + x_plus + x_offset ,y + y_offset,text_string,4,4,0,c_white,c_white,c_white,c_white,alpha);


}

