extends Panel

onready var hand_speed_display = get_node("hand_speed")
onready var root = get_parent()
onready var timer = root.get_node("Timer")
onready var ClickDisplay = get_node("clicks")

func _ready():
	
	pass 

func _on_Panel_visibility_changed():
	if self.visible == true:
		ClickDisplay.text = ClickDisplay.text + str(root.clicks) + "次"
		hand_speed_display.text = hand_speed_display.text + str(root.hand_speed) + "次/秒"
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
