extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var sound
var clicked=false
var panel
var scene_name
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("Game_over_root")
	sound=root.get_node("sound/CancelSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if sound.is_playing()==false and clicked==true:
		print("重生")
		get_tree().change_scene("res://scenes/AI_test.tscn")
	pass


func _on_rebrown_pressed():
	sound.play()
	clicked=true
	pass
	 # Replace with function body.
