if (active) {
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    // Draw the selection screen (Left and Right)
    draw_card_visual(gui_w * 0.35, gui_h * 0.5, card_left);
    draw_card_visual(gui_w * 0.65, gui_h * 0.5, card_right);
}

// The core visual function
function draw_card_visual(_x, _y, _data) {
    var scale = 3.5; 
    
   
    var spr_w = 128 * scale;
    var spr_h = 128 * scale;
    draw_sprite_ext(_data.sprite, 0, _x - (spr_w/2), _y - (spr_h/2), scale, scale, 0, c_white, 1);

    // 2. Text Setup
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    // 3. Draw Name (Top Box)
    draw_set_color(c_black); 
    draw_text_transformed(_x, _y - (40 * scale), _data.name, scale * 0.4, scale * 0.4, 0);

    // 4. Draw Description 
    draw_set_color(c_white);
    var text_y = _y + (32 * scale); 
    draw_text_ext_transformed(_x, text_y, _data.desc, 12, 100, scale * 0.4, scale * 0.4, 0);
}

//STATS DISPLAY
/
if (keyboard_check(vk_control)) { 
    var _player = instance_find(obj_Player, 0);
    
    if (_player != noone) {
        draw_set_halign(fa_left);
        draw_set_color(c_yellow); 
        
        var _y = 20;
        draw_text(20, _y, "--- LIVE STATS ---");
        draw_text(20, _y + 20, "Damage Mult: " + string(_player.damage_mult));
        draw_text(20, _y + 40, "Speed Mult: " + string(_player.atk_speed_mult));
        draw_text(20, _y + 60, "Endurance Mult: " + string(_player.endurance_mult));
        draw_text(20, _y + 80, "Cards Collected: " + string(global.cards_collected));
    }
}