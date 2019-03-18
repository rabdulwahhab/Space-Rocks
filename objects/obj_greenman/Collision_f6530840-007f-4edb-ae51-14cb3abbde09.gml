/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_asteroidXplode, 1, false);

with(other){
	instance_destroy();
}

health -= 1;
	
if (health <= 0){
	instance_destroy();
	audio_play_sound(snd_greenmanKill, 1, false);
	repeat(30){
		instance_create_layer(x, y, "Instances", obj_debris);
	}
	score += 2000;
}