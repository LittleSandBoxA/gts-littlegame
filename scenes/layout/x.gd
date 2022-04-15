extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var sound
func _ready():
	root=find_parent("Game_over_root")
	sound=root.get_node("sound/CancelSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_x_pressed():
	root.hide()
	sound.play()
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	pass # Replace with function body.
