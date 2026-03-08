//
enum spawn_direction {
	spawnLeft,
	spawnRight,
	spawnUp,
	spawnDown
}
spawnState = spawn_direction.spawnLeft
enemyInt = 0
xPos = 0
yPos = 0
enemiesSpawned = 0
alarm[0] = spawn_interval
randomize();
// obj_wave
if(instance_exists(obj_wave)) {
	obj_wave.numSpawners--
}