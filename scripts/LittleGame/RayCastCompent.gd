extends RayCast

onready var piano = load("res://objects/3D/Piano.tscn")
func _process(delta):
	if is_colliding():
		var pianoInstance = piano.instance()
		pianoInstance.position
		get_tree().current_scene.add_child(pianoInstance)
		pass
	pass
