if (active) {

    //  Darken Background 
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    draw_set_alpha(1);

    // 2. Draw "Next Upgrade Cost" 
    draw_set_halign(fa_center);
    draw_set_color(c_yellow);
    draw_text(gui_w / 2, 80, "COST: " + string(current_cost) + " COINS");

    // 3. Draw the two cards
    draw_card_ui(gui_w * 0.35, gui_h * 0.5, card_left);
    draw_card_ui(gui_w * 0.65, gui_h * 0.5, card_right);
}

// Function to draw cards
function draw_card_ui(_x, _y, _data) {
    var w = 200;
    var h = 300;
    
    // Border Color based on Tier
    draw_set_color(_data.color); 
    draw_rectangle(_x - w/2 - 5, _y - h/2 - 5, _x + w/2 + 5, _y + h/2 + 5, false);
    
    // Card Face
    draw_set_color(c_dkgray);
    draw_rectangle(_x - w/2, _y - h/2, _x + w/2, _y + h/2, false);
    
    // Content
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(_x, _y - 120, _data.name);
    draw_text_ext(_x, _y, _data.desc, 22, w - 20);
    
    draw_set_color(_data.color);
    draw_text(_x, _y + 130, "[" + string_upper(_data.tier) + "]");
}