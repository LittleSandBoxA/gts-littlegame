extends Spatial

func _ready():
	pass

func _input(event):
	if event.is_action_pressed("backToMenu"):
		var totitle=get_node("toTitle")
		totitle.show()
	pass
