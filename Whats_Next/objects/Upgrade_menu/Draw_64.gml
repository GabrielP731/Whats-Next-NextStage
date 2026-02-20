
if (instance_exists(obj_tower1)){
	
	var p = obj_tower1;
	//HP
	var hp_percent = p.hp / p.max_hp;

	draw_set_color(c_red); 
	draw_rectangle(20, 20, 220, 40, false);

	draw_set_color(c_lime); 
	draw_rectangle(20, 20, 20 + (200 * hp_percent), 40, false)

	// Level text
	draw_set_color(c_white);
	draw_text(20, 60, "Level: " + string(p.level));

	//XP
	var xp_percent = p.current_xp / p.xp_to_next;
	draw_set_color(c_blue);
	draw_rectangle(20, 90, 20 + (200 * xp_percent), 110, false);
}