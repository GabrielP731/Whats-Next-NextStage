
function scr_damage_player(damage) {
    // 1. Safely check if the global variable exists
    var _mult = 1.0;
    if (variable_global_exists("endurance_multiplier")) {
        _mult = global.endurance_multiplier;
    }
    
    // 2. Force positive damage and apply reduction
    var _absDamage = abs(damage);
    var _reducedDamage = max(1, _absDamage / _mult);
    
    // 3. Apply to health
    if (variable_global_exists("towerStats")) {
        global.towerStats.towerHealth -= _reducedDamage;
        // Apply Shader.
		with(obj_Player) {
			flash_timer = 5
		}
        // Final sanity check for game over
        if (global.towerStats.towerHealth <= 0) {
            global.towerStats.towerHealth = 0;
			if(instance_exists(obj_player_smoke_particle)) instance_destroy(obj_player_smoke_particle)
			with (obj_Player) {
			healthLow = false
			
			}
            room_goto(RoomGameOver)
			//Rude_Game_Over();
        }
    }
}

function Rude_Game_Over()
{
	var _timesPrinted = 30;
	var _errorMessage = "";
	for(var _i = _timesPrinted; _i > 0; _i--)
	{
		_errorMessage += "GAME OVER --- GAME OVER --- GAME OVER --- GAME OVER --- GAME OVER";
		if(_i != 1)
			_errorMessage += "\n";
	}
	show_error(_errorMessage, true);
}