extends Button

func _ready():
	pass 

func _on_toTitle_button_down():
	var root=find_parent("root")
	var sound = root.get_node("sound/CancelSound")
	sound.play()
	get_tree().change_scene("res://scenes/layout/Title.tscn")
	pass
