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


func _on_toTitle_button_down():
	var root=find_parent("root")
	var sound=root.get_node("sound/CancelSound")
	sound.play()
	get_tree().change_scene("res://scenes/layout/Title.tscn")
	pass # Replace with function body.
