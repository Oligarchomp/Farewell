
final_time = obj_player.timer_global / 60 ;
minute = -1;
do 
{
	final_time -= 60;
	minute += 1;
}
until ( final_time < 0)



seconde = round(obj_player.timer_global / 60) - minute * 60;

if ( string_length(seconde) > 1 ) 
{
	text_string = "Time = " + string(minute) + " : " + string(seconde)
}
else
{
	text_string = "Time = " + string(minute) + " : 0" + string(seconde)
	
}
x_offset =-10;
y_offset = 0;

timer_wait = 500;

