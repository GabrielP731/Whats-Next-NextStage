// Create Warning for direction.
switch(spawnState) {
	case 0:
	instance_create_layer(288, 704, "Instances_Indicators", obj_indicator_warning)
	break;
	case 1:
	instance_create_layer(2016, 704, "Instances_Indicators", obj_indicator_warning)
	break;
	case 2:
	instance_create_layer(1152, 256, "Instances_Indicators", obj_indicator_warning)
	break;
	case 3:
	instance_create_layer(1152, 1152, "Instances_Indicators", obj_indicator_warning)
	break;
}