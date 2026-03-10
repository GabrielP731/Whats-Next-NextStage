// These will be initialized in scr_set_next_wave.
waveLength = undefined
waveNumbers = undefined
waveDirection = undefined
// Individual Wave Details

// INSTRUCTIONS:
// For each wave, the length of the Numbers and Directions arrays must be equal.
// Numbers is how many will spawn from each spawner.
// Directions is the direction each spawner will be in.
// 0 is left, 1 is right, 2 is up, 3 is down, -1 is random.

// Wave 1
wave1Numbers = [1, 1, 1]
wave1Directions = [-1, -1, -1]
// Wave 2
wave2Numbers = [2, 3, 1, 2, 3]
wave2Directions = [2, 2, 2, 3, 2]
// Wave 3
wave3Numbers = [2, 3, 1, 5]
wave3Directions = [0, 2, 1, 3]
// Wave 4
wave4Numbers = [2, 3, 1, 5, 4]
wave4Directions = [0, 2, 1, 3, 2]
// Wave 5
wave5Numbers = [2, 3, 1, 5, 4, 4]
wave5Directions = [-1, -1, -1, -1, -1, -1]
// Wave details
scr_set_next_wave()