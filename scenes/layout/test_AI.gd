extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var clicked=false
var sound
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=get_parent()
	sound=root.get_node("sound/CancelSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if sound.is_playing()==false and clicked==true:
		get_tree().change_scene("res://scenes/AI_test.tscn")
	pass


func _on_Button_pressed():
	sound.play()
	clicked=true
	pass # Replace with function body.
