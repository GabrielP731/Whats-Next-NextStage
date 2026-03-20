// Put coin in random position nearby.
randomise()
xOffset = irandom_range(-9, 9)
yOffset = irandom_range(-9, 9)
instance_create_layer(x + xOffset, y + yOffset, "Instances", obj_coin)

global.score += deathScore
global.towerStats.towerXPCurrent += xp_reward;

instance_create_layer(x, y, "Instances", obj_enemydeath_particle)
// Destroy minimap sprite.
instance_destroy(minimap)
/**
with (obj_player) { 
	current_xp += other.xp_reward; 
	}
	*/
	// I commented out the code above, as there was no obj_player.
// End Wave if the last enemy has been defeated.
