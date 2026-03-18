// Do not draw in viewport.
if(camera_get_view_x(view_camera[0]) == camera_get_view_x(view_camera[view_current])) {
	// Shader.
if (flash_amount > 0) {
    shader_set(sh_damage);
    shader_set_uniform_f(u_flash, flash_amount);
}

draw_self();

if (flash_amount > 0) {
    shader_reset();
}
}