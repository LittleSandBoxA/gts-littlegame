extends Control



func _ready():
	var name = OS.get_name()
	var exit = OS.get_exit_code() 
	print_debug(name)
	print_debug(exit)
	pass 
	
func _notification(what):
	if what==MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		get_tree().quit()
	pass

func _process(delta):
	
	pass
