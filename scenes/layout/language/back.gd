extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var panel
var root
# Called when the node enters the scene tree for the first time.
func _ready():
	panel=get_parent()
	root=panel.get_parent()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_back_button_down():
	panel.hide()
	root.cancelSound.play()
	pass # Replace with function body.
