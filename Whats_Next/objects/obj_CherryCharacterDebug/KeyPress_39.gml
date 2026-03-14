/// @description Set State - Attacking
ch8_characterState = 
	(ch8_characterState == ch8_CHARACTER_STATE.ATTACKING)
	? ch8_CHARACTER_STATE.IDLE : ch8_CHARACTER_STATE.ATTACKING;