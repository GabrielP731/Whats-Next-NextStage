canShoot = false;
// Link to the global stat instead of a hard number
shooting_cooldown = global.bulletStats.fireRateDelay;
// Set camera to View 0
cam = view_camera[0]

// Setting canshoot on false to prevent clicking the start screen from triggering the first shot.
alarm[0] = 15