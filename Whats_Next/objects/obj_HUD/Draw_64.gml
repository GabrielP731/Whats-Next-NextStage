if (instance_exists(obj_Player)) {
    var t_stats = global.towerStats;
    
    // HP BAR ---
    var hp_percent = t_stats.towerHealth / t_stats.towerHealthMax;
    draw_set_color(c_red); 
    draw_rectangle(20, 20, 220, 40, false);
    draw_set_color(c_lime); 
    draw_rectangle(20, 20, 20 + (200 * hp_percent), 40, false);

    // LEVEL
    draw_set_color(c_white);
    draw_text(20, 60, "Level: " + string(t_stats.towerLevel));

    //  XP BAR 
    var xp_percent = t_stats.towerXPCurrent / t_stats.towerXPForUpgrade;
    draw_set_color(c_blue);
    draw_rectangle(20, 90, 20 + (200 * xp_percent), 110, false);


   // --- CARD GUI ---
   
    var icon_x = 50;
    var icon_y = 130; 
    var scale = 0.5; 
    
    // Draw the sprite
    draw_sprite_ext(spr_indicator_cards, 0, icon_x, icon_y, scale, scale, 0, c_white, 1);
    
    // Draw Text to the right of the icon
    draw_set_valign(fa_middle);
    draw_set_halign(fa_left);
    draw_set_color(c_white);
    
    var text_x_offset = icon_x + (100 * scale) + 50;
    var center_of_icon_y = icon_y + (120 * scale / 2);
    
	
	var _coinsText = "Coins: " + string(global.coins); // Current coins
	_coinsText += " (" + string(obj_CardManager.current_cost) + " needed)"; // Coins needed to open the card menu
	
    draw_text(text_x_offset, center_of_icon_y - 10, _coinsText);
    draw_text(text_x_offset, center_of_icon_y + 10, "Cards: " + string(global.cards_collected));
	draw_text(text_x_offset, center_of_icon_y - 30, "Score: " + string(global.score));
}