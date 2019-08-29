// x position of the camera

	if (follow.x - cam_width / 2 >= 0) and (follow.x + cam_width / 2 <= room_width )
	{
		x = xTo
	}

	if (room_width > cam_width )
	{
		if (follow.x - cam_width / 2 < 0)
		{
			x= cam_width / 2	
		}

		if (follow.x + cam_width / 2 > room_width )
		{
			x= room_width - cam_width / 2	
		}
	}
	else
	{
		x= room_width / 2	
	}

	// y position of the camera

	if (follow.y - cam_height / 2 >= 0) and (follow.y + cam_height / 2 <= room_height )
	{
		y = yTo
	}

	if (room_height > cam_height )
	{
		if (follow.y - cam_height / 2 < 0)
		{
			y= cam_height / 2	
		}

		if (follow.y + cam_height / 2 > room_height )
		{
			y= room_height - cam_height / 2	
		}
	}
	else
	{
			y = room_height / 2
	}

	if ( follow != noone )
	{
		xTo = follow.x ;	
		yTo = follow.y ;
	}
	
	x_position = x; // carefull with this
	


// shaking effect
x = x_position + shake * (-1) ^ shake;

if (shake > 0)
{
	shake -= 1;	
}
//setting the camera
var vm = matrix_build_lookat( x ,y ,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);

