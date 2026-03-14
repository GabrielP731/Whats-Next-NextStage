
//Calc current cost
current_cost = global.base_card_cost + (global.cards_collected * 15);

//Press E to interact
if (keyboard_check_pressed(ord("E")) ) {
    if (global.coins >= current_cost) {
        global.coins -= current_cost;
        active = true;
		
		// Pick two random cards from the pool
        card_left = global.card_pool[irandom(array_length(global.card_pool) - 1)];
        card_right = global.card_pool[irandom(array_length(global.card_pool) - 1)];
		
		// Pause the game
		instance_deactivate_all(true); 
	}
}
if (active) {
    // Check for Mouse Clicks on Left Card
    if (mouse_check_button_pressed(mb_left)) {
         selected = -1;
		
		// Simple bounding box check for GUI (roughly)
        if (device_mouse_x_to_gui(0) < gui_w/2) selected = card_left;
        else selected = card_right;
		
		if (selected != -1) {
            // Apply Stats 
            if (selected.stat == "damage") global.bulletStats.bulletDamage *= selected.mult;
            if (selected.stat == "speed")  global.bulletStats.bulletSpeed *= selected.mult;
            if (selected.stat == "range")  global.bulletStats.bulletRange *= selected.mult;
			
			//Counter + 1
            global.cards_collected += 1;
			
            active = false;

			// Resume game
            instance_activate_all(); 
        }
    }
}