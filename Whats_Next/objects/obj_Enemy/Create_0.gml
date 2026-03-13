// I moved this to variable definitions.
// xp_reward = 20
// This will serve as a parent for the other enemy types to inherit from.
// Initialize alarm for damage loop.
hp = max_hp
alarm[0] = -1
// Set Score.
deathScore = totalScore
alarm[3] = scoreDecrementTime
// Shader stats.
flash_timer = 0;
flash_amount = 0;

u_flash = shader_get_uniform(sh_damage, "flash");