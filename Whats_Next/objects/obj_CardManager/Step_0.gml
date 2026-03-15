// Cheat Key
if (keyboard_check_pressed(ord("C"))) {
    global.coins += 10000;
}

current_cost = global.base_card_cost + (global.cards_collected * 15);

// ACTIVATION
if (keyboard_check_pressed(ord("E"))) {
    if (!active && global.coins >= current_cost) {
        active = true;
        global.coins -= current_cost; 
        
        card_left = global.card_pool[irandom(array_length(global.card_pool) - 1)];
        card_right = global.card_pool[irandom(array_length(global.card_pool) - 1)];
        
        instance_deactivate_all(true); 
    }
}

//SELECTION  
if (active && mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var gui_w = display_get_gui_width();
    var selected_card = (mx < gui_w / 2) ? card_left : card_right;
    
    // Pause
    instance_activate_all();
    

    var _player = instance_find(obj_Player, 0);
    
	 // Apply the multiplier 
    if (_player != noone) {
       
	if (selected_card.stat == "damage") {
	    // Update the global bullet stat directly
	    global.bulletStats.bulletDamage *= selected_card.mult; 
	}
	if (selected_card.stat == "speed") {
	    global.bulletStats.fireRateDelay /= selected_card.mult; 
	}
	if (selected_card.stat == "endurance") {
	   if (!variable_global_exists("endurance_multiplier")) {
		    global.endurance_multiplier = 1.0;
		}
		global.endurance_multiplier *= selected_card.mult;
			}
    }
    
    global.cards_collected += 1;
    active = false;
}

