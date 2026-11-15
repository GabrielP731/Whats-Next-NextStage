global.waveNumber = 0;
global.coins = 0;
global.cards_collected = 0;
global.base_card_cost = 0;
global.score = 0;
global.card_pool = undefined;

function initStats()
{
	
// Originally in the object "Upgrade_menu" >> Create .
global.waveNumber = 1
global.coins = 0; 
global.cards_collected = 0;
global.base_card_cost = 10;
global.score = 0;

// Saw this in scr_card_system, it needs to be pre-defined over here
// scr_card_system is called by obj_CardManager to actually populate this field
global.cardPool = undefined;


// Originally in obj_CardManager >> Create
//		card counter
global.cards_collected = 0;
//		initial cost
global.base_card_cost = 10; 


// Removed the variable definitions from obj_bullet_pistol to put them here
// this global will fix Pacheco's "Select A Card" feature
global.bulletStats = {
	bulletDamage : 2,
	fireRateDelay : 30,
	bulletSpeed : 10,
	bulletRange : 0, // A stat that should be removed soon (but stays for CardSystem compatibility)
	enemyBulletSpeed : 12,
	enemyBulletDamage : 4
} // These stats are apparently set by a button and not this script

// These were found in obj_tower (on object that is now renamed to obj_Player)
global.towerStats = {
	towerLevel : 1, // originally obj_tower >> level
	towerXPCurrent : 0, // originally obj_tower >> current_xp
	towerXPForUpgrade : 100, // originally obj_tower >> xp_to_next
	towerHealth : 100, // originally obj_tower >> hp
	towerHealthMax : 100 ,// originally obj_tower >> max_hp
	endurance_mult : 1.0
}

}
global.towerSprites = [spr_tower1, spr_tower2, spr_tower3];