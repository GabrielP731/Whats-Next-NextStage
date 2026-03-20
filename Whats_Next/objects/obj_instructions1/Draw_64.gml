if (!visible) exit;
 // must match the asset name exactly

var _scale = 2.0;

var manualStr = "HOW TO PLAY:\n \n Mouse Movement: Aim/Adjust bullet trajectory.\n \n Left Click: Fire \n \n E: Purchase an Upgrade Card";


draw_set_halign(fa_center);
draw_set_valign(fa_middle);

image_angle += 0;
draw_text_ext_transformed(room_width / 2, room_height / 2, manualStr, 10, 300, 2, 2, image_angle);

