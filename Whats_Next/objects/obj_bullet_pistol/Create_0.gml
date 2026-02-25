if instance_exists(obj_cursor) {
	direction = point_direction(x, y, obj_cursor.x, obj_cursor.y)
	image_angle = direction + 90;
} else {
	direction = 270
}

speed = bulletSpeed