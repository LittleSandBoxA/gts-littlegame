extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sound
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("root")
	sound=root.get_node("sound/EnterSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_title_pressed():
	sound.play()
	get_tree().change_scene("res://scenes/layout/Title.tscn")
	pass # Replace with function body.
