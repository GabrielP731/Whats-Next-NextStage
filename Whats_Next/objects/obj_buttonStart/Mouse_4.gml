if(!visible) exit
// Reset global values.
global.waveNumber = 1
global.coins = 0; 
global.cards_collected = 0;
global.base_card_cost = 10;
global.score = 0;
//		card counter
global.cards_collected = 0;
//		initial cost
global.base_card_cost = 10; 
global.bulletStats = {
	bulletDamage : 2,
	fireRateDelay : 30,
	bulletSpeed : 8,
	bulletRange : 0, // A stat that should be removed soon (but stays for CardSystem compatibility)
	enemyBulletSpeed : 2,
	enemyBulletDamage : 4
}
global.towerStats = {
	towerLevel : 1, // originally obj_tower >> level
	towerXPCurrent : 0, // originally obj_tower >> current_xp
	towerXPForUpgrade : 100, // originally obj_tower >> xp_to_next
	towerHealth : 100, // originally obj_tower >> hp
	towerHealthMax : 100 ,// originally obj_tower >> max_hp
	endurance_mult : 1.0
}
room_goto(RoomGame)