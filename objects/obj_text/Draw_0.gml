/// @description Insert description here

if (instance_exists(obj_end))
{
	random_nbr = 1000 +round(random(9000));

	text_string =  string(random_nbr) + " - Farewell ";
}



if (instance_exists(obj_end_text))
{
	if (obj_end_text.timer > timer_wait)
	{
		anim = true;
	}
	
	
}