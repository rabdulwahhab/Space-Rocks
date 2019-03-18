switch(room){
	case rm_game:
		draw_set_halign(fa_left);
		draw_set_valign(fa_bottom)
		draw_text(60, 460, "SCORE: " + string(score));
		draw_text(60, 480, "LIVES: " + string(lives));
		break;
	
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 
			room_height/2-100, 
			"SPACE SHOOTER", 
			3,
			3, 
			0,
			c, c, c, c,
			1
		);
		
		draw_text(room_width/2, room_height/2, 
		"A game by Rayyan Abdi");
		
		draw_text(room_width/2, room_height/2+30, 
		"2019");
		
		draw_text(room_width/2, room_height/2+100, 
		">> PRESS ENTER TO BEGIN <<");
		 
		draw_text_transformed_color(
			room_width/2, 
			room_height/2-50, 
			"(beta)", 
			1.5,
			1.5, 
			0,
			c, c, c, c,
			1
		);
		draw_set_halign(fa_left);
		break;
	case rm_instruc:
		draw_set_halign(fa_center);
		var c = c_gray;
		
		draw_text_transformed_color(
			room_width/2, 
			100, 
			"INSTRUCTIONS", 
			3,
			3, 
			0,
			c, c, c, c,
			1
		);
		
		draw_text(room_width/2, 190, 
		"You've lost connection with Mission Control.");
		
		draw_text(room_width/2, 220, 
		"Abandoned within the depths of the Asteroid Belt,");
		
		draw_text(room_width/2, 250, 
		"many perils lurk in the deep darkness of space...");
		
		draw_text(room_width/2, 280, 
		"Will you survive, or perish?");
		
		
		draw_text_transformed_color(
			room_width/2, 
			350, 
			"MOVE WITH THE ARROW KEYS, AND USE", 
			1.5,
			1.5, 
			0,
			c_yellow, c_yellow, c_yellow, c_yellow,
			1
		);
		
		draw_text_transformed_color(
			room_width/2, 
			390, 
			"SPACEBAR TO SHOOT INCOMING THREATS!", 
			1.5,
			1.5, 
			0,
			c_yellow, c_yellow, c_yellow, c_yellow,
			1
		);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		
		draw_text_transformed_color(
			room_width/2,
			170,
			"YOU SURVIVED!",
			3,
			3,
			0,
			c, c, c, c,
			1
		);
		
		draw_text_transformed_color(
			room_width/2,
			230,
			"Another dawn lies in your future...",
			1.5,
			1.5,
			0,
			c_ltgray, c_ltgray, c_ltgray, c_ltgray,
			0.80
		);
		
		draw_text(room_width/2, room_height/2+70,
		"Press ENTER to restart");
		break;
		
	case rm_gameOver:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2,
			room_height/2-100,
			"GAME OVER",
			3,
			3,
			0,
			c, c, c, c,
			1
		);
		
		draw_text(room_width/2, room_height/2-30,
		"You die a forgotten hero...");
		
		draw_text(room_width/2, room_height/2+10,
		"FINAL SCORE: "+string(score));
		
		
		draw_text(room_width/2, room_height/2+90,
		"Press ENTER to restart");
}
		
			
	