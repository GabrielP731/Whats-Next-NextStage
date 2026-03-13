// Shader.
if (flash_amount > 0) {
    shader_set(sh_white);
    shader_set_uniform_f(u_flash, flash_amount);
}

draw_self();

if (flash_amount > 0) {
    shader_reset();
}