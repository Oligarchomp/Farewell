/// @description Insert description here
// right

if (start_timer > 100)
{

	if (!wall_jumping)
	{
		if (x_spd < 4)
		{
			x_spd += 1;
		}
	}
	else
	{
		if (x_spd < 4)
		{
			x_spd += 0.01;
		}
	}
}
