extends Panel

var anim
var clicks_display
var hand_speed_display
var root
var timer

func _ready():
	root = find_parent("root")
	timer = root.get_node("Timer")
	anim = get_tree().current_scene.get_node("anim")
	clicks_display = get_node("clicks")
	hand_speed_display = get_node("hand_speed")
	pass 

func _on_Panel_visibility_changed():
	if self.visible == true:
		clicks_display.text = clicks_display.text + str(root.clicks) + "次"
		hand_speed_display.text = hand_speed_display.text + str(timer.hand_speed) + "次/秒"
		anim.play("胜利")
		get_tree().paused = true
	if self.visible == false:
		get_tree().paused = false
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
