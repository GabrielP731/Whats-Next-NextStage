if (current_xp >= xp_to_next && level < 5) {
	current_xp -= xp_to_next;
	level += 1;

	
	//Requirement for each level
	switch (level) {
		case 2: xp_to_next = 200; break;
		case 3:xp_to_next = 350; break;
		case 4: xp_to_next = 500; break;
		case 5: xp_to_next = 999999; break; 
		
	}
	
	max_hp  += 20;
	hp = max_hp
	
	if (level == 3) {
		 sprite_index = sprite_level3;
		 }
	if (level == 5){
		sprite_index = sprite_level5;
	}
	
}
	
	//Testing
	if (keyboard_check_pressed(ord("L"))) { 
		current_xp += 50;
		}