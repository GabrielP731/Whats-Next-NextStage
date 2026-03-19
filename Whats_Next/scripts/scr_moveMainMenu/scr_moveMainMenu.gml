function scr_moveMainMenu(result){
	
	with (obj_mainMenuManager) {
		current_menu = result
	}
	var menu = obj_mainMenuManager.current_menu;
	
	with (all) {
    if (variable_instance_exists(id, "menuState")) {
        visible = (menuState == menu);
    }
}
}