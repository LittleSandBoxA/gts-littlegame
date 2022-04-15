extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sound
var clicked=false
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("Game_over_root")
	sound=root.get_node("sound/CancelSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if sound.is_playing()==false and clicked==true:
		get_tree().change_scene("res://scenes/layout/Title.tscn")
	pass


func _on_back_to_title_pressed():
	sound.play()
	clicked=true
	pass # Replace with function body.
