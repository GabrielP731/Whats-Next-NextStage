if (instance_exists(obj_tower1)) {
    var p = obj_tower1;
    
    // HP BAR ---
    var hp_percent = p.hp / p.max_hp;
    draw_set_color(c_red); 
    draw_rectangle(20, 20, 220, 40, false);
    draw_set_color(c_lime); 
    draw_rectangle(20, 20, 20 + (200 * hp_percent), 40, false);

    // LEVEL
    draw_set_color(c_white);
    draw_text(20, 60, "Level: " + string(p.level));

    //  XP BAR 
    var xp_percent = p.current_xp / p.xp_to_next;
    draw_set_color(c_blue);
    draw_rectangle(20, 90, 20 + (200 * xp_percent), 110, false);


   // --- CARD GUI ---
   
    var icon_x = 20;
    var icon_y = 130; 
    var scale = 0.12; 
    
    // Draw the sprite
    draw_sprite_ext(spr_ui_cards, 0, icon_x, icon_y, scale, scale, 0, c_white, 1);
    
    // Draw Text to the right of the icon
    draw_set_valign(fa_middle);
    draw_set_halign(fa_left);
    draw_set_color(c_white);
    
    var text_x_offset = icon_x + (500 * scale) + 10;
    var center_of_icon_y = icon_y + (500 * scale / 2);
    
    draw_text(text_x_offset, center_of_icon_y - 10, "Coins: " + string(global.coins));
    draw_text(text_x_offset, center_of_icon_y + 10, "Cards: " + string(global.cards_collected));
}