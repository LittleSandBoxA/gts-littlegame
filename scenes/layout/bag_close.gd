extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var sound
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("bag_root")
	sound=root.get_node("sound/CancelSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_close_pressed():
	root.hide()
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	sound.play()
	pass # Replace with function body.
