/// @description Insert description here



alpha -= 0.01
if ( alpha < 0)
{
	instance_destroy(self);
}

x += cos(degtorad(angle)) * spd
y += sin(degtorad(angle)) * spd

draw_sprite_ext(spr[rand],image_index,x,y,0.2,0.2,angle,c_white,alpha);
