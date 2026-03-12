alarm[0] = lifespan

// Shader stats.
alarm[1] = flashTime;
flash_amount = 0;
flashing = false;
u_flash = shader_get_uniform(sh_damage, "flash");