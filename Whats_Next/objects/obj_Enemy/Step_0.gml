// Make sure player exists
if (instance_exists(obj_tower1)) 
{
    dist = point_distance(x, y, obj_tower1.x, obj_tower1.y);
    // 
    if (dist > obj_tower1.sprite_width * 5/4)
    {
        // Move toward player
        direction = point_direction(x, y, obj_tower1.x, obj_tower1.y);
        speed = move_speed;
    }
    else
    {
        // Stop moving when close enough
        speed = 0;
		if(alarm[0] == -1) alarm[0] = attack_interval
    }
}