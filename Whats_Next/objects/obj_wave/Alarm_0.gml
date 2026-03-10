// See scr_create_spawner in scripts for details.
if (currentSpawner < obj_wave_holder.waveLength) {
    scr_create_spawner(obj_wave_holder.waveNumbers[currentSpawner]);
    currentSpawner++;
}