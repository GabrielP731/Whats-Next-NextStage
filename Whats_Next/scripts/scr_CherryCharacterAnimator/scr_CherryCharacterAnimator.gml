// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// --- --- --- --  Cherry Character Animator - --- --- --- ---
// --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// Managed by Jason Barksdale of Team Ilúvatar


// Important Flag
// Makes unloaded assets searchable by name
//		(see "GML Reference >> Asset Managment >> Assets And Tags 
//			>> asset_get_index()" in the GameMaker Manual)
gml_pragma("MarkTagAsUsed", "character_anim");

// !! warning !!
// I made a mistake while exporting my sprites 
// This affects the direction my animated-sprites are facing
//
// (see the bottom of ch8_AngleToDirection)






















// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// --- --- --- --- --- DIRECTION MANAGMENT --- --- --- --- ---
// --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---

// DIRECTION
// a list of the 8 common directions
// the order of these elements are very important to ch8_AngleToDirection
enum ch8_DIRECTION
{
	FRONT,
	FRONT_RIGHT,
	RIGHT,
	BACK_RIGHT,
	BACK,
	BACK_LEFT,
	LEFT,
	FRONT_LEFT
}

// DIRECTION_STRINGS
// A string suffix for use in searching for my assets
//
// note
// the order of this array corresponds to the [ch8_DIRECTION] enum 
global.ch8_DIRECTION_STRINGS = ["F","FR","R","BR","B","BL","L","FL"];


// AngleToDirection
// converts an angle (0-360 degrees) into a direction label
// to be passed into ch8_DirectionToString as an argument
//
// parameters
// _angle [float]: the angle of some instance
// _wrongName [boolean]: reverses the issue with my incorrectly named sprites
// 
// returns [ch8_DIRECTION]: a direction label
function ch8_AngleToDirection(_angle, _wrongName = false)
{
	var _result  = 0;
	for(var _i = 0; _i < 8; _i++)
	{
		var _factor = 22.5 + (_i * 45);
		
		// show_debug_message("DEBUG [ch8_AngleToDirection]... 
		//		ANGLE " + string(_angle) 
		//		+ " FACTOR " + string(_factor));
		
		if(_angle < _factor)
		{
			_result = _i;
			break;
		}
			
	}
	
	// A crude workaround for my animated sprites having improper file names
	if(_wrongName)
	{
		_result -= 2;
		_result *= -1;
		if(_result < 0)
			_result += 8;
		
		_result = (_result + 4) % 8
	}
		
	
	return _result;
}

// DirectionToString
// converts a direction label into a suffix
// to be used when searching for one of my animated-sprites
//
// parameters
// _direction [ch8_DIRECTION]: a direction label 
// 
// returns [string]: a file suffix
function ch8_DirectionToString(_direction)
{ return global.CH8_DIRECTION_STRINGS[_direction]; }






















// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// --- --- --- --- ---  INSTANCE MANAGMENT --- --- --- --- ---
// --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---


// LoadAnimation
// changes the sprite of some instance
// 
// warning
// assets that are not marked as "used" will not be found in this function
// if this happens, this function will set the instance's sprite_index to -1 
// (for your reference, I've given my files the "character_anim" tag)
//
// parameters
// _instance [instance_index]: the instance to be affected
// _assetName [string]: the sprite that will be loaded
function ch8_LoadAnimation(_instance, _assetName = undefined)
{ 
	var _asset = asset_get_index(_assetName);
	if(_asset == _instance.sprite_index){
		show_debug_message("SAME SPRITE DETECTED");
		return;
	}

	_instance.image_index = 0;
	_instance.sprite_index = _asset;
	// show_debug_message("DEBUG [ch8_LoadAnimation]: gave " + string(_instance) + " the anim " + _assetName);
}

// PauseAnimation
// prevents the sprite of some instance from cycling through its frames
// 
// parameters
// _instance [index]: the instance to be affected
function ch8_PauseAnimation(_instance)
{_instance.image_speed = 0.00;}


// ResumeAnimation
// allows the sprite of some instance to cycle through its frames
// 
// parameters
// _instance [index]: the instance to be affected
function ch8_ResumeAnimation(_instance)
{_instance.image_speed = 1.00;}


// SetFrame
// displays a certain frame of an instance's animated-sprite
// 
// parameters
// _instance [index]: the instance to be affected
// _index [int64]: the frame that will be displayed
function ch8_SetFrame(_instance, _index)
{_instance.image_index = _index;}





















// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// --- --- --- --- --  CHARACTER MANAGEMENT -- --- --- --- ---
// --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---


// CreateAnimationName
// converts information about a Character into the name of a sprite asset
// 
// note
// when looking up my sprites, they are named as the following
// " spr_CHARACTER _ <BODY> _ <action> _ <DIRECTION> "
// (see "parameters" for more information)
// 
//		example output
//		" spr_CHARACTER_GIANT_attack_FL "
//
// parameters:
// _body [string]: the model that will be displayed (eg. "GIANT", "RANGER", "SWORDSMAN"...)
// _action [string]: the action performed by the model
// _direction [ch8_DIRECTION]: a suffix; 
// 
// returns [string]: the name of a sprite asset
function ch8_CreateAnimationName(_body, _action, _direction)
{
	var _result = "";
	_result += "spr_CHARACTER";
	_result += "_" + string_upper(_body);
	_result += "_" + string_lower(_action);
	_result += "_" + FlaxAnimator_DirectionToString(_direction);
	
	// show_debug_message("DEBUG [ch8_CreateAnimationName]: CREATED " + string(_result));
	return _result;
}

// StoreCharacterData
// updates a few variables that are associated with CherryCharacterAnimator
// allows you to use ch8_DrawCharacter without filling in all its arguments
// 
// parameters
// _instance [index]: the instance to be affected
// _body [string]: the type of human within the instance's sprite
// _action [string]: the type of action within the instance's sprite
function ch8_StoreCharacterData(_instance, _body, _action)
{
	// For use with ch8_DrawCharacter
	with (_instance)
	{
		ch8_characterBody = _body;
		ch8_characterAction = _action;
	}
}

// DrawCharacter
// a shortcut function for loading a character sprite into an instance
// 
// parameters
// _instance [index]: the sprite to be affected
// _body [string]: the model that will be displayed
// _action [string]: the action performed within the animated-sprite
function ch8_DrawCharacter(_instance, _body = undefined, _action = undefined)
{ 
	if(!instance_exists(_instance))	return;
	
	// Retrieval/Storage of Animation Data 
	if(is_undefined(_body))			_body	= _instance.ch8_characterBody;
	if(is_undefined(_action))		_action = _instance.ch8_characterAction;
	ch8_StoreCharacterData(_instance, _body, _action);
	
	
	// Loading Sprite
	var _direction = ch8_AngleToDirection(_instance.direction, true);
	var _assetName = ch8_CreateAnimationName(_body, _action, _direction);
	ch8_LoadAnimation(_instance, _assetName);
}

// SpawnTemporaryAnimation
// creates an instance that disappears upon completing its animation
// 
// (used to play a "death" animation while 
//		preventing interactions with an [undefined] object)
// 
// parameters
// _x [int64]: the horizontal position of the new instance
// _y [int64]: the vertical position of the new instance
// _direction [float]: the angle of the new instance (not its sprite)
// _body [string]: the model to be displayed on screen
// _action [string]: the action performed within the animated-sprite
function ch8_SpawnTemporaryAnimation(_x, _y, _direction, _body, _action)
{
	// Creating a temporary sprite (disappears at the final frame of the animation)
	var _fadingInstance = instance_create_layer(_x, _y, 0, obj_DestroyOnAnimationEnd);
	_fadingInstance.direction = _direction;
	ch8_DrawCharacter(_fadingInstance, _body, _action);
}





















// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// --- --- --- --- --- --  STATE MACHINE - --- --- --- --- ---
// --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---

// CHARACTER_STATE
// different actions associated with functions of CherryCharacterAnimator's state machine
enum ch8_CHARACTER_STATE
{
	IDLE,
	WALKING,
	ATTACKING,
	DYING
}

// ch8_Moving
// actions associated with the "IDLE" and "WALKING" states
//
// parameters
// _instance [index]: the instance to be affected
function ch8_Moving(_instance)
{ 
	if(_instance.speed == 0)
		ch8_DrawCharacter(_instance, undefined, "idle");
	else
		ch8_DrawCharacter(_instance, undefined, "walk");
}

// ch8_Attacking
// actions associated with the "ATTACKING" state
// 
// warning:
// DO NOT change the direction of the character
// while its attack animation is playing
// 
// This causes an issue with the broadcast messages
// of my attack animations
// 
// parameters
// _instance [index]: the instance to be affected
function ch8_Attacking(_instance)
{ ch8_DrawCharacter(_instance, undefined, "attack"); }

// ch8_Dying
// actions associated with the "DYING" state
//
// parameters
// _instance [index]: the instance to be affected
function ch8_Dying(_instance)
{
	// Delete the old ch8 object
	var _x = _instance.x;
	var _y = _instance.y;
	var _direction = _instance.direction;
	var _body = _instance.ch8_characterBody;
	instance_destroy(_instance);
	
	
	ch8_SpawnTemporaryAnimation(_x, _y, _direction, _body, "death");
}

// ch8_Init
// prevents runtime errors when storing/retrieving character data
//
// parameters
// _instance [index]: the instance to be initialized with CherryCharacterAnimator
// _body [string]: the model to be shown on screen (there must be one)
function ch8_Init(_instance, _body)
{
	// Variables
	ch8_characterBody = _body;
	ch8_characterAction = "idle";
	ch8_characterState = ch8_CHARACTER_STATE.IDLE;
	ch8_characterStatePrevious = undefined;
}

// ch8_Animate
// a step function for the CherryCharacterAnimator state machine
// 
// parameters
// _instance [index]: the instance to be affected
function ch8_Animate(_instance)
{
	var _state = _instance.ch8_characterState;
	var _statePrevious = _instance.ch8_characterStatePrevious;
	
	switch(_state)
	{
		case ch8_CHARACTER_STATE.ATTACKING:
			_instance.speed = 0;
			ch8_Attacking(_instance);
			break;
			
		case ch8_CHARACTER_STATE.DYING:
			ch8_Dying(_instance);
			break;
		
		default:
			ch8_Moving(_instance);
			break;
	}
	
	// if (_state != _statePrevious)
	//		ch8_SetFrame(_instance, 0);
		
	_instance.ch8_characterStatePrevious = _state;
}

