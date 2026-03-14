// Make sure player exists
if (instance_exists(obj_Player)) {
	// Get coordinates of current target.
	var target = path_points[my_path_index];
	var target_x = target[0];
	var target_y = target[1];

	var dist = point_distance(x, y, target_x, target_y);

	if (dist > 1)
	{
	    // Move smoothly toward the current target point.
	    direction = point_direction(x, y, target_x, target_y);
	    speed = move_speed;
	}
	else
	{
	    // Reached this point, so set a new point to repeat the process.
	    speed = 0;
		// Use modulo of the length of the path/array to loop targets for a closed path.
	    my_path_index = (my_path_index + 1) mod array_length(path_points);
	}
}
// Shader Cooldown.
if (flash_timer > 0) {
    flash_timer--;
    flash_amount = 1;
} else {
    flash_amount = 0;
}