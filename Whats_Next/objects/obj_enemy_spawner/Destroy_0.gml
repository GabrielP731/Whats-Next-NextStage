if(instance_exists(obj_wave)) {
	if(obj_wave.numSpawners > 0) {
	with (obj_wave) {
		alarm[0] = spawnerCooldown
	}
	} else if (!instance_exists(obj_Enemy) && !instance_exists(obj_Enemy_bullet)) {
		instance_destroy(obj_wave)
	}
}
