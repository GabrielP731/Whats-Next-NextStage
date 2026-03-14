if instance_exists(obj_Player) {
	direction = point_direction(x, y, obj_Player.x, obj_Player.y)
	image_angle = direction + 90;
} else {
	direction = 270
}

speed = global.bulletStats.bulletSpeed;