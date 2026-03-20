// Inherit the parent event
event_inherited();
canDodge = true
// Dodge Shader stats.
dodge_flash_timer = 0;
dodge_flash_amount = 0;

dodge_flash = shader_get_uniform(sh_damage, "flash");

ch8_Init(self, "SWORDSMAN");