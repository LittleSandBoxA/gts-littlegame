extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sound 
var press=false
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("ta_fang_test")
	sound=root.get_node("sound/CancelSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if press==true and sound.is_playing()==false:
		get_tree().change_scene("res://scenes/layout/ta_fang_level_up.tscn")
	pass
	


func _on_level_up_pressed():
	sound.play()
	press=true
	
	pass # Replace with function body.
