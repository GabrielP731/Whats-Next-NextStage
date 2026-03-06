if instance_exists(obj_tower1) {
	direction = point_direction(x, y, obj_tower1.x, obj_tower1.y)
	image_angle = direction + 90;
} else {
	direction = 270
}

speed = bulletSpeed