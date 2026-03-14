/// @description cycle characters
humanType = (humanType + 1) % 3;


function charString(_chars)
{
	switch(_chars)
	{
		case chars.GIANT:
			return "GIANT";
		case chars.SWORDSMAN:
			return "SWORDSMAN";
		case chars.RANGER:
			return "RANGER";
	}
}

ch8_DrawCharacter(self, charString(humanType), undefined);



