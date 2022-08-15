extends Node2D

func _on_Resume_pressed():
	self.hide()
	pass

func _on_Restart_pressed():
	get_tree().paused = false
# warning-ignore:return_value_discarded
	get_tree().reload_current_scene()
	pass

func _on_MainMenu_pressed():
	get_tree().paused = false
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/layout/Title.tscn")
	pass


func _on_Game_over_root_visibility_changed():
	if self.visible:
		get_tree().paused = true
	else:
		get_tree().paused = false
	pass
