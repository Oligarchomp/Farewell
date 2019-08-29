/// @description Insert description here


if ( anim)
{
	if ( alpha < 1)
	{
		alpha += 0.01;
	}
	
	if (x_plus < 0)
	{
		x_plus += 1;
	}
	
	draw_set_font(font_game)
	draw_text_transformed_color(x + x_plus + x_offset ,y + y_offset,text_string,2,2,0,c_white,c_white,c_white,c_white,alpha);
}
