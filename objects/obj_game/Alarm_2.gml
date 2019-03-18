/// @description Insert description here
// You can write your code in this editor

if (room != rm_game){
	exit;	 // exits rest of the script. nothing executes beyond this point
}

if (choose(0,1) == 0){
	// spawn asteroid on side
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	// spawn top or bottom
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "Instances", obj_greenman);

// greenman spawn rate here
alarm[2] = 4*room_speed;