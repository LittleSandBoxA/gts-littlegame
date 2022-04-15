extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var name=OS.get_name()
	var exit=OS.get_exit_code() 
	print(name)
	print(exit)
	pass 
func _notification(what):
	if what==MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		get_tree().quit()
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
