if(instance_exists(obj_wave)) {
	if(obj_wave.currentSpawner < obj_wave.numSpawners) {
	with (obj_wave) {
		alarm[0] = spawnerCooldown
	}
	}
}
