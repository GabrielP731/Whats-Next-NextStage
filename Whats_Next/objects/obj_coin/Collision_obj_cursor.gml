if (!collected) {
global.coins += coinValue
alarm[0] = collectTime
collected = true
flash_amount = 1
audio_play_sound(snd_coin, 1,false)
}