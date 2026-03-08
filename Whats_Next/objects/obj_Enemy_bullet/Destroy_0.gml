if (instance_exists(obj_wave)) {
	if(obj_wave.numSpawners <= 0 and !instance_exists(obj_enemy_spawner) and !instance_exists(obj_Enemy)) {
	instance_destroy(obj_wave)
	}
}