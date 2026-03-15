function scr_damage_player(damage) {
	var _cleanDamage = abs(damage);
    // Use the global variable directly
    var _reducedDamage = max(1, _cleanDamage / global.endurance_multiplier);
    
    if (global.towerStats.towerHealth > 0) {
        
        global.towerStats.towerHealth -= _reducedDamage;
        
   
        if (global.towerStats.towerHealth > 0) {
            if (instance_exists(obj_Player)) {
                obj_Player.flash_timer = 5;
            }
        } else {
            global.towerStats.towerHealth = 0;
            Rude_Game_Over();
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