/// @description Insert description here

if (obj_player.ON)
{
	instance_create_depth(x,y,depth,obj_blue_off);
	
	instance_destroy(self);
}

if (! place_meeting(x,y,obj_ground))
{
	instance_create_depth(x,y,depth,obj_ground);
}
