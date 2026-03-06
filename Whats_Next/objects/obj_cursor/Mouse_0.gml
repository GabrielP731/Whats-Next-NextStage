if(instance_exists(obj_tower1) && canShoot) {
	instance_create_layer(obj_tower1.x, obj_tower1.y, "Instance_Projectiles", obj_bullet_pistol)
	canShoot = false
	alarm[0] = shooting_cooldown
}