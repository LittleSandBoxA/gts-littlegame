extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_rotate_button_down():
	print("rotate")
	var root=get_parent()
	var model=root.get_node("rigdBig")
	model.Myrotate()
	pass # Replace with function body.
