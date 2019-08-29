/// @description Insert description here
//A

if (grounded)
{
	jumping = true;
	
	jump_counter += 1;
}

if (jumping)
{
	jump_timer += 0.9;	
	
	jump_spd += jump_acc / jump_timer / (wall_jumping /3 +1);
}



