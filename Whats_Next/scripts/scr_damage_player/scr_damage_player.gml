function scr_damage_player(damage){
	if(global.towerStats.towerHealth > 0) {
		global.towerStats.towerHealth -= damage
	if(global.towerStats.towerHealth > 0) {
		obj_Player.flash_timer = 5;
	} else {
			global.towerStats.towerHealth = 0
			// TODO: Game Over

				// here's a rude game_over mechanic
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