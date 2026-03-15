scr_card_system(); // Added this line to initialize global.card_pool

// Positioning
gui_w = display_get_gui_width();
gui_h = display_get_gui_height();


// Ensure your other globals are here too
if (!variable_global_exists("towerStats")) {
    global.towerStats = {
        towerHealth : 100,
        towerHealthMax : 100
    };
}

