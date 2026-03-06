//
enum spawn_direction {
	spawnLeft,
	spawnRight,
	spawnUp,
	spawnDown
}
spawnState = spawn_direction.spawnUp
enemyInt = 0
xPos = 0
yPos = 0
enemiesSpawned = 0
alarm[0] = spawn_interval
randomize();