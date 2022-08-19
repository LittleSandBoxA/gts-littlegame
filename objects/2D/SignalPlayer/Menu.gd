extends Node2D

func _on_Resume_pressed():
	self.hide()
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
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
	
#按下ESC触发
func _show_menu():
	self.visible = true
	pass
	
#当可见性改变时
func _on_Menu_visibility_changed():
	if self.visible:
		get_tree().paused = true
	else:
		get_tree().paused = false
	pass 
