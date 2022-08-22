extends TouchScreenButton

signal up

func _ready():
	var player = get_parent().get_parent().get_node("Player")
	connect("up",player,"_on_up_pressed")
	pass
	
func _process(delta):
	if self.is_pressed():
		emit_signal("up")
	pass
