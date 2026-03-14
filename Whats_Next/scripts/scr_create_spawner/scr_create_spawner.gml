function scr_create_spawner(numEnemies, spawnDirection){
	// numEnemies, number of enemies spawned before the spawner is destroyed.
	// spawnDirection: 0 is left, 1 is right, 2 is up, 3 is down.
	instance_create_layer(0, 0, "Instances_Enemies", obj_enemy_spawner)
	if (instance_exists(obj_enemy_spawner)) {
		
		if (is_undefined(spawnDirection) || spawnDirection == -1) {
		randomise()
		spawnDirection = irandom_range(0,3);
		}
		
		with (obj_enemy_spawner) {
			wave_length = numEnemies
			spawnState = spawnDirection;
		}
	}
}