function scr_set_next_wave(){
	with (obj_wave_holder) {
		switch(global.waveNumber) {
		case 1:
		waveNumbers = wave1Numbers
		waveLength = array_length(wave1Numbers)
		waveDirections = wave1Directions
		break;
		case 2:
		waveNumbers = wave2Numbers
		waveLength = array_length(wave2Numbers)
		waveDirections = wave2Directions
		break;
		case 3:
		waveNumbers = wave3Numbers
		waveLength = array_length(wave3Numbers)
		waveDirections = wave3Directions
		break;
		case 4:
		waveNumbers = wave4Numbers
		waveLength = array_length(wave4Numbers)
		waveDirections = wave4Directions
		break;
		case 5:
		waveNumbers = wave5Numbers
		waveLength = array_length(wave5Numbers)
		waveDirections = wave5Directions
		break;
		}
	}
}