action_1 = function()
{
	ch8_SpawnTemporaryAnimation(x, y, direction, ch8_characterBody, "death");
}

if(event_data[? "message"] == "action_1")
	action_1();

