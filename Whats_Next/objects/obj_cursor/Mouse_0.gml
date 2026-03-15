if (instance_exists(obj_Player) && canShoot) {
    instance_create_layer(obj_Player.x, obj_Player.y, "Instances_Projectiles", obj_bullet_pistol);
    canShoot = false;
    
    shooting_cooldown = global.bulletStats.fireRateDelay; 
    
    alarm[0] = shooting_cooldown;
}