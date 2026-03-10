function scr_wave_end_condition_check(){
	
	if(instance_exists(obj_wave)) {
		
		if(obj_wave.currentSpawner >= obj_wave.numSpawners) {
			
			if (instance_number(obj_Enemy) == 0
			&& instance_number(obj_Enemy2) == 0
			&& instance_number(obj_Enemy3) == 0
			&& instance_number(obj_Enemy_bullet) == 0
			&& instance_number(obj_enemy_spawner) == 0) {
    
				with (obj_wave) instance_destroy();
			}
		}
	}
}