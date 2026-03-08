switch(spawnState) {
	case spawn_direction.spawnUp:
		yPos = upperBound
		xPos = random_range(leftBound, rightBound)
		break;
	case spawn_direction.spawnDown:
		yPos = lowerBound
		xPos = random_range(leftBound, rightBound)
		break;
	case spawn_direction.spawnLeft:
		xPos = leftBound
		yPos = random_range(lowerBound, upperBound)
		break;
	case spawn_direction.spawnRight:
		xPos = rightBound
		yPos = random_range(lowerBound, upperBound)
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
if (enemiesSpawned >= wave_length) instance_destroy()