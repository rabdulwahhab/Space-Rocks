/// @description Insert description here
// You can write your code in this editor

instance_destroy();

// whatever occurs in 'with' statement, the type of 'other' will execute
with(other){
	instance_destroy();	
	
	// if large asteroid, override creat event and make 2 med asteroids
	if (sprite_index == spr_asteroidLarge){
		audio_play_sound(snd_asteroidHit, 1, false);
		repeat(2){
			var new = instance_create_layer(x, y, "Instances", obj_asteroid);
			new.sprite_index = spr_asteroidMed;
		}
		score += 1000;
	} else if (sprite_index == spr_asteroidMed){
		audio_play_sound(snd_asteroidHit, 1, false);
		repeat(3){
			var new = instance_create_layer(x, y, "Instances", obj_asteroid);
			new.sprite_index = spr_asteroidSmall;
		}
		score += 750;
	} else {
		audio_play_sound(snd_asteroidXplode, 1, false);
		repeat(8){
			instance_create_layer(x, y, "Instances", obj_debris);
		}
		score += 500;
	}
}


