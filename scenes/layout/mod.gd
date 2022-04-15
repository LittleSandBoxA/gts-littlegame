extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
# Called when the node enters the scene tree for the first time.
func _ready():
	root=get_parent()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_mod_button_down():
	root.EnterSound.play()
	get_tree().change_scene("res://scenes/layout/mod管理.tscn")
	pass # Replace with function body.
