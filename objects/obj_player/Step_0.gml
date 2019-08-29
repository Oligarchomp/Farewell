/// @description Insert description here


x += x_spd;

if ( x_spd > 0 )
{
	x_spd -= 0.5;
	
	if ( x_spd < 0)
	{
		x_spd = 0;
	}
}

if ( x_spd < 0 )
{
	x_spd += 0.5;
	
	if ( x_spd > 0)
	{
		x_spd = 0;
	}
}

if ( place_meeting(x + x_spd,y,obj_ground)) and (x_spd != 0)
{
	do
	{
		x -= sign(x_spd)
	}
	until ( !place_meeting(x + sign(x_spd),y,obj_ground))
}


// gravity

grounded = false;
 
 
if ( place_meeting(x,y + 1, obj_ground)) and ( !place_meeting(x,y,obj_ground))
{
	//shake screnn big fall
	if ( fall_spd > 18 ) and ( fall_spd < 25 )
	{
		obj_camera.shake = 5  ;
		
		audio_play_sound(snd_fall,2,false);
	}
	
	if ( fall_spd >= 25 )
	{
		obj_camera.shake = 10  ;
		
		audio_play_sound(snd_fall,2,false);
	}
	
	
	grounded = true;
	fall_spd = 0;
	
}


if (!grounded) and (!jumping)
{
	if ( place_meeting(x, y + fall_spd, obj_ground))
	{
		do
		{
			y -= 1;
		}
		until ( !place_meeting(x, y + fall_spd, obj_ground))
	}
	else
	{
		y += fall_spd;
		fall_spd += acc / (sliding * 10 + 1);
	
	}
}


if ( place_meeting(x, y - jump_spd,obj_ground)) and (jump_spd > 0)
{
	do
	{
		y += 1;
	}
	until ( !place_meeting(x, y , obj_ground))
	
	jump_spd = 0;
}
y -= jump_spd


// jump
if ( jump_spd > 0 )
{
	jump_spd -= 1;
	if (jump_spd < 0)
	{
		jump_spd = 0;
	}
}

if (jump_spd == 0) and (jumping) 
{
	jumping = false;
	jump_timer = 0;
	wall_jumping = false;
	fall_spd = 0;
}


//sliding
if ( place_meeting(x + x_spd,y,obj_ground)) and (!place_meeting(x,y,obj_ground)) and( !jumping)
{
	sliding = true;
}
else
{
	sliding = false;
}

// dying

if ( y > room_height)
{
	is_dying = true;
}

if (is_dying)
{
	death_counter +=1;
	
	
	for ( i = 0; i < 10; i += 1)
	{
		instance_create_depth(x,y,depth,obj_death_particule);
		
	}
	
	
	x = obj_spawnpoint.x;
	y = obj_spawnpoint.y;
	
	fall_spd = 0;
	
	is_dying = false;
	
	audio_play_sound(snd_death,2,false)
	
}




