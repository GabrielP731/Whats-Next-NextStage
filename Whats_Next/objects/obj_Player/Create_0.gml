// I moved the tower stats to global variables 
// so we don't confuse their location down the line

// this variable need to be local otherwise the card system will not allow it.
damage_mult = 1.0;
atk_speed_mult = 1.0;
endurance_mult = 1.0;
global.towerStats.towerHealth = global.towerStats.towerHealthMax;

//for tower sprite change on lvl 3 and 5
sprite_level1 = global.towerSprites[0]; 
sprite_level3 = global.towerSprites[1];
sprite_level5 = global.towerSprites[2];

sprite_index = sprite_level1;
// Shader stats.
flash_timer = 0;
flash_amount = 0;

u_flash = shader_get_uniform(sh_damage, "flash");


// Bool for if health is low.
healthLow = false
