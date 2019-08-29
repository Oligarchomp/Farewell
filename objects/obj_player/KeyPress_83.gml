/// @description Insert description here
// S

if (! instance_exists(obj_end))
{
	rand_sfx = round(random(1));
	
	sfx[0] = snd_bop;
	sfx[1] = snd_bop;
	
	audio_play_sound(sfx[rand_sfx],1,false);
	
	
	switch_counter += 1;
	
	ON = !ON;

	obj_camera.shake = 7;
}