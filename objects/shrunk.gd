extends TouchScreenButton

signal shrunk

func _ready():
	var player = get_parent().get_parent().get_node("Player")
	connect("shrunk",player,"_on_shrunk_pressed")
	pass
	
func _process(delta):
	if self.is_pressed():
		emit_signal("shrunk",delta)
	pass
