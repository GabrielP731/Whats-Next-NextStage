// Inherit the parent event
event_inherited();
// Once in attack range, can no longer dodge.
if (dist <= obj_Player.sprite_width * 5/4) canDodge = false
if(canDodge) {
bullet = instance_nearest(x, y, obj_bullet_pistol)
if(instance_exists(bullet)) {
	distance = point_distance(x, y, bullet.x, bullet.y)
	if(distance < dodgeRange) {
		// Dodge Shader Activate.
		dodge_flash_timer = 5
		// If the distance between x values is greater than that between y values, dodge vertically.
		if (abs(x - bullet.x) > abs(y - bullet.y)) {
			if(y > bullet.y) {
			// Dodge Down
			y += dodgeDistance
			} else {
			// Dodge Up	
			y -= dodgeDistance
			}
		} else {
			if(x > bullet.x) {
			// Dodge Right
			x += dodgeDistance
			} else {
				// Dodge Left
				x -= dodgeDistance
			}
			
		}
	
	canDodge = false
	}
}
}
// DodgeShader Cooldown.
if (dodge_flash_timer > 0) {
    dodge_flash_timer--;
    dodge_flash_amount = 1;
} else {
    dodge_flash_amount = 0;
}