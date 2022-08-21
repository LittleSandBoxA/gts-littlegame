extends RayCast

onready var piano = load("res://objects/3D/Piano.tscn")
onready var pianoInstance = piano.instance()
func _process(delta):
	if is_colliding():
		if get_collider():
			pianoInstance.translation = get_collision_point()
			get_tree().current_scene.add_child(pianoInstance)
		#pianoInstance.translation = cast_to
		#get_tree().current_scene.add_child(pianoInstance)
		pass
	pass
