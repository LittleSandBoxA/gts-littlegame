extends Button

var scene

func _ready():
	scene=get_tree().current_scene.name
	pass
	
func _on_to_title_pressed():
	if scene=="ta_fang_test":
		get_tree().change_scene("res://scenes/ta_fang_mode/ta_fang_title.tscn")
		get_tree().paused=false
	pass
