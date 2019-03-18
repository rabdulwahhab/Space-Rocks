if (room == rm_game){
	
	if(audio_is_playing(msc_gameplay)){
		repeat(10){
			var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.6, room_width));
			var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.6, room_height));
			
			instance_create_layer(xx, yy, "Instances", obj_asteroid);
		}
	} else {
		
		audio_play_sound(msc_gameplay, 2, true);
		
		repeat(10){
			var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.6, room_width));
			var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.6, room_height));
			
			instance_create_layer(xx, yy, "Instances", obj_asteroid);
		}
	}
	
	// steps used here
	alarm[0] = 60;
	
}	


if(room == rm_start){
	audio_play_sound(msc_menu, 1, true);
} else if(room == rm_game){
	if(audio_is_playing(msc_menu)){
		audio_stop_sound(msc_menu);
	}
}
