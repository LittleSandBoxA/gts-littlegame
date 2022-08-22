extends TouchScreenButton

signal grow

func _ready():
	var player = get_parent().get_parent().get_node("Player")
	connect("grow",player,"_on_grow_pressed")
	pass
	
func _process(delta):
	if self.is_pressed():
		emit_signal("grow",delta)
	pass
