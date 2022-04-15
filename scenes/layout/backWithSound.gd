extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sound
var click=0
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("root")
	sound=root.get_node("sound/CancelSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !sound.is_playing() and click==1:
		get_tree().change_scene("res://scenes/layout/Title.tscn")
	pass


func _on_back_pressed():
	click+=1
	sound.play()
	pass # Replace with function body.
