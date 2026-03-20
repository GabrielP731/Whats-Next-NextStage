if instance_exists(obj_Player) {
	direction = point_direction(x, y, obj_Player.x, obj_Player.y)
	image_angle = direction + 90;
} else {
	direction = 270
}
audio_play_sound(snd_shoot, 1, false)
speed = global.bulletStats.enemyBulletSpeed;