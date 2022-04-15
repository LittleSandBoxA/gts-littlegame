extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var cancel
# Called when the node enters the scene tree for the first time.
func _ready():
	root=get_parent().get_parent()
	cancel=root.get_node("sound/CancelSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_back_button_down():
	cancel.play()

	
	pass # Replace with function body.


func _on_back_button_up():
	print("up")
	get_tree().change_scene("res://scenes/layout/Title.tscn")
	pass # Replace with function body.
