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

// Create Warning on a slight delay of 5 frames after instantiation.
alarm[1] = 5