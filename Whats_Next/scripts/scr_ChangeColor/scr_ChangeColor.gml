function scr_ChangeColor(){

}

// SetSpriteTint
// Changes the color of a sprite
// 
// This is similar to layering a translucent color over your original sprite
//
// tip
// For the _colour input, you can can use a hex like
// ' $FFFFFF ' which would mean (255, 255, 255) if converted to an integer
// 
// You can also use the constructor functions 
// ' make_colour_rgb(r,g,b) '	which take inputs 0-255
// ' make_colour_hsv(h,s,v) '	which take inputs 0-255
// 
// (See GameMaker Language >> GML_Reference 
//		>> Drawing >> Colour_And_Alpha >> Hex Colours)
//
// parameters
// _instance [index]: the instance to be affected
// _colour [HEX]: a color code
function chc_SetSpriteTint(_instance, _colour)
{
	_instance.image_blend = _colour;
}