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
		ch8_characterState = ch8_CHARACTER_STATE.IDLE; // CherryCharacterAnimator
    }
    else
    {
        // Stop moving when close enough
        speed = 0;
		ch8_characterState = ch8_CHARACTER_STATE.ATTACKING; // CherryCharacterAnimator
    }
}
// Shader Cooldown.
if (flash_timer > 0) {
    flash_timer--;
    flash_amount = 1;
} else {
    flash_amount = 0;
}


ch8_Animate(self); // CherryCharacterAnimator