if instance_exists(obj_Player) {
	direction = point_direction(x, y, obj_Player.x, obj_Player.y)
	image_angle = direction + 90;
} else {
	direction = 270
}
audio_play_sound(snd_enemy_shoot, 1, false)

bulletSpeed = global.bulletStats.enemyBulletSpeed;
speed = bulletSpeed;

bulletDamage = global.bulletStats.enemyBulletDamage;