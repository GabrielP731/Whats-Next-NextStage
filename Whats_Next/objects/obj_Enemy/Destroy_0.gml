
/**
with (obj_player) { 
	current_xp += other.xp_reward; 
	}
	*/
	// I commented out the code above, as there was no obj_player.
// End Wave if the last enemy has been defeated.
if (instance_exists(obj_wave)) {
	if(obj_wave.numSpawners <= 0 and !instance_exists(obj_enemy_spawner) and !instance_exists(obj_Enemy_bullet)) {
	instance_destroy(obj_wave)
	}
}