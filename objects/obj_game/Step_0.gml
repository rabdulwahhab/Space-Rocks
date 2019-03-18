if (keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_instruc);
			break;
		
		case rm_instruc:
			room_goto(rm_game);
			break;
		
		case rm_win:
		case rm_gameOver:
			game_restart();
			break;
	}
}

if (room == rm_game){
	if (score >= 50000){
		audio_stop_sound(msc_gameplay);
		room_goto(rm_win);
		audio_play_sound(msc_gameWin, 1, true);
	}

	if (lives <= 0){
		audio_stop_sound(msc_gameplay);
		room_goto(rm_gameOver);
		audio_play_sound(msc_gameover, 1, true);
	}
}
