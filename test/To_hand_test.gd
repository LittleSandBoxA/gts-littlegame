extends Button
#这个脚本是安卓手机到测手速场景的跳转
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#切换到测手速模式
func _on_hand_pressed():
	get_tree().change_scene("res://scenes/test_hand_speed.tscn")
	pass # Replace with function body.

#切换到塔防模式
func _on_tower_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/ta_fang_title.tscn")
	pass # Replace with function body.

#切换到AI场景
func _on_AI_pressed():
	get_tree().change_scene("res://scenes/AI_test.tscn")
	pass # Replace with function body.


func _on_music_pressed():
	get_tree().change_scene("res://test/music_room.tscn")
	pass # Replace with function body.


func _on_save_pressed():
	get_tree().change_scene("res://test/save.tscn")
	pass # Replace with function body.
