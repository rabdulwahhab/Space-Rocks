/// @description Insert description here
// You can write your code in this editor

with(obj_game){
	alarm[1] = room_speed+60;
}

audio_play_sound(snd_died, 1, false);
instance_destroy();

repeat(12){
	instance_create_layer(x, y, "Instances", obj_debris);
}

lives -= 1;