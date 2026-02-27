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
instance_create_layer(xPos, yPos, "Instances", obj_Enemy)
enemiesSpawned++
if (enemiesSpawned < wave_length) alarm[0] = spawn_interval	