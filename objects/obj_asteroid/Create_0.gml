/// @description Insert description here
// You can write your code in this editor

sprite_index = choose(
	spr_asteroidSmall,
	spr_asteroidMed,
	spr_asteroidLarge
);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

speed = 0.75;