extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var scene
# Called when the node enters the scene tree for the first time.
func _ready():
	scene=get_tree().current_scene.name
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_to_title_pressed():
	if scene=="ta_fang_test":
		get_tree().change_scene("res://scenes/ta_fang_mode/ta_fang_title.tscn")
		get_tree().paused=false
	pass # Replace with function body.
