// Currently set to give itself a random tint
frames_before_change = 60 * 2;

giveRandomColor = function()
{
	var _r = irandom(255);
	var _g = irandom(255);
	var _b = irandom(255);
	var _colour = make_colour_rgb(_r, _g, _b);
	
	chc_SetSpriteTint(self, _colour);
}

giveRandomColor();
alarm[0] = frames_before_change;


