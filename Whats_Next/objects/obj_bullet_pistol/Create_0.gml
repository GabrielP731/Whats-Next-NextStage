if instance_exists(obj_cursor) {
	direction = point_direction(x, y, obj_cursor.x, obj_cursor.y)
	image_angle = direction + 90;
} else {
	direction = 270
}
audio_play_sound(snd_enemy_shoot, 1, false)
speed = global.bulletStats.bulletSpeed;
// Pause Sprite.
image_speed = 0;
// Ensure it is the first frame.
image_index = 0;