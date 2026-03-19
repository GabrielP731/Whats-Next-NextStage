// Make sure player exists
if (instance_exists(obj_Player)) 
{
    dist = point_distance(x, y, obj_Player.x, obj_Player.y);
    // 
    if (dist > obj_Player.sprite_width * 1/2)
    {
        // Move toward player
        direction = point_direction(x, y, obj_Player.x, obj_Player.y);
        speed = move_speed;
    }
    else
    {
        // Stop moving when close enough
        speed = 0;
		if(alarm[0] == -1) alarm[0] = attack_interval
    }
}
// Shader Cooldown.
if (flash_timer > 0) {
    flash_timer--;
    flash_amount = 1;
} else {
    flash_amount = 0;
}