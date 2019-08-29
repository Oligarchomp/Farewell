/// @description Insert description here
// A PRESS

//walljump

if ( place_meeting(x + x_spd,y,obj_ground)) and (!place_meeting(x,y,obj_ground)) and (!jumping) and (!grounded)
{
	jump_counter += 1;
	
	jump_timer = 0;
	x_spd = -sign(x_spd) * 10;
	jumping = true;
	wall_jumping = true;
	jump_spd += 2
}

