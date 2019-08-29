/// @description Insert description here
jump_counter = 0;

switch_counter = 0;

death_counter = 0;

timer_global = 0;

room_goto(room_0);

start_timer = 0;

ON = false;


acc = 0.3
fall_spd = 0;

wall_jumping = false;
sliding = false;

jumping = false;
jump_acc = 5;
jump_spd = 0;
jump_timer = 0;


grounded = false;
x_spd = 0;

is_dying = false;


audio_play_sound(snd_music,1,true);