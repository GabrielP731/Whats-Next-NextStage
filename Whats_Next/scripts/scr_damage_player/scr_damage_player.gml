function scr_damage_player(damage){
	if(obj_tower1.hp > 0) {
	obj_tower1.hp -= damage
	if(obj_tower1.hp > 0) {
		obj_tower1.flash_timer = 5;
	} else {
		obj_tower1.hp = 0
	// TODO: Game Over
	
	}
	}
}