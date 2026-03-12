// Inherit the parent event
event_inherited();
alarm[1] = shoot_interval
on_path = false
target_index = 0;
// Copy path points into an array.
path_points = [];
var n = path_get_number(Path_Patrol);
for (var i = 0; i < n; i++)
{
    array_push(path_points, [path_get_point_x(Path_Patrol, i), path_get_point_y(Path_Patrol, i)]);
}

// Find the nearest point on the path.
// Start with a comically large number that will be an immediate broken record.
var nearest_dist = 99999;
// Iterate through each point in the path to get the closest one.
for (var i = 0; i < n; i++)
{
	// Get distance of point.
    var px = path_points[i][0];
    var py = path_points[i][1];
    var d = point_distance(x, y, px, py);
    if (d < nearest_dist)
    {
		// Set target to the closest point.
        nearest_dist = d;
        my_path_index = i;
    }
}