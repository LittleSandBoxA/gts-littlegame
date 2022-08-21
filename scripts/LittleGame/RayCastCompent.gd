extends RayCast

onready var piano = load("res://objects/3D/Piano.tscn")

var placed = false

func _process(delta):
	if is_colliding():
		if get_collider() and Input.is_mouse_button_pressed(BUTTON_RIGHT) and not placed:
			var pianoInstance = piano.instance()
			pianoInstance.translation = get_collision_point()
			get_tree().current_scene.add_child(pianoInstance)
		#pianoInstance.translation = cast_to
		#get_tree().current_scene.add_child(pianoInstance)
		pass
	pass
