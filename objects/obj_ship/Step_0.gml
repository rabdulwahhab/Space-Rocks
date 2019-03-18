// movement

if (keyboard_check(vk_left)){
	image_angle += 5;
}

if (keyboard_check(vk_right)){
	image_angle -= 5;
}

if (keyboard_check(vk_up)){
	sprite_index = spr_ship2;
	motion_add(image_angle, 0.03);
} else {
	sprite_index = spr_ship;
}

if (keyboard_check(vk_down)){
	motion_add(image_angle - 180, 0.03);
}

if (keyboard_check_pressed(vk_space)){
	
	var inst = instance_create_layer(
		x,
		y,
		"Instances", 
		obj_bullet
	);
	audio_play_sound(snd_shot, 1, false);
	inst.direction = image_angle;
}

move_wrap(true, true, sprite_width/2);