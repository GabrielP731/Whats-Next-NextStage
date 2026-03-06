switch(spawnState) {
	case spawn_direction.spawnUp:
		yPos = 32
		xPos = random_range(32, 1344)
		break;
	case spawn_direction.spawnDown:
		yPos = 768
		xPos = random_range(32, 1344)
		break;
	case spawn_direction.spawnLeft:
		xPos = 32
		yPos = random_range(32, 768)
		break;
	case spawn_direction.spawnRight:
		xPos = 1344
		yPos = random_range(32, 768)
		break;
}
// Hard Code enemyInt to be the number of enemy types, and have a case for each.
enemyInt = irandom_range(0, 2)
if (enemyInt == 0) {
instance_create_layer(xPos, yPos, "Instances", obj_Enemy)
} else if (enemyInt == 1) {
instance_create_layer(xPos, yPos, "Instances", obj_Enemy2)
} else if (enemyInt == 2) {
instance_create_layer(xPos, yPos, "Instances", obj_Enemy3)
}
enemiesSpawned++
if (enemiesSpawned < wave_length) alarm[0] = spawn_interval	