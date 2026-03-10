// numSpawners is initialized at a comically large size.
// This is to prevent a crash. The proper value will be set at Alarm 1, which triggers almost immediately.
numSpawners = 999
currentSpawner = 0
alarm[0] = spawnerCooldown
alarm[1] = refreshTime
// This object will be destroyed when there are no spawners, enemies, and enemy bullets remaining.