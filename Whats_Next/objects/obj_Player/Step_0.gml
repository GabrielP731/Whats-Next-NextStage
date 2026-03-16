if (global.towerStats.towerXPCurrent >= global.towerStats.towerXPForUpgrade && global.towerStats.towerLevel < 5) {
	global.towerStats.towerXPCurrent -= global.towerStats.towerXPForUpgrade;
	global.towerStats.towerLevel += 1;

	
	//Requirement for each level
	switch (global.towerStats.towerLevel) {
		case 2: global.towerStats.towerXPForUpgrade = 200; break;
		case 3: global.towerStats.towerXPForUpgrade = 350; break;
		case 4: global.towerStats.towerXPForUpgrade = 500; break;
		case 5: global.towerStats.towerXPForUpgrade = 999999; break; 
		
	}
	
	global.towerStats.towerHealthMax += 20;
	global.towerStats.towerHealth = global.towerStats.towerHealthMax
	
	if (global.towerStats.towerLevel == 3) {
		 sprite_index = sprite_level3;
		 }
	if (global.towerStats.towerLevel == 5){
		sprite_index = sprite_level5;
	}
	
}
	
	//Testing
	if (keyboard_check_pressed(ord("L"))) { 
		global.towerStats.towerXPCurrent += 50;
		}

// Shader Cooldown.
if (flash_timer > 0) {
    flash_timer--;
    flash_amount = 1;
} else {
    flash_amount = 0;
}
// Particle System.
// TODO: Emit smoke when hp is under 40%.
if(global.towerStats.towerHealth < global.towerStats.towerHealthMax * 0.4) {
if(!healthLow) {

instance_create_layer(x, y, "Instances", obj_player_smoke_particle)
healthLow = true
}
} else if (global.towerStats.towerHealth >= global.towerStats.towerHealthMax * 0.4 and healthLow)  {
	healthLow = false
	if(instance_exists(obj_player_smoke_particle)) instance_destroy(obj_player_smoke_particle)
	
}