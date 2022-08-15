extends Node2D


func _on_start_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/level_selector.tscn")
	pass

func _on_bian_dui_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/bian_dui.tscn")
	pass

func _on_ta_ku_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/ta_ku.tscn")
	pass

func _on_sign_pressed():
	#open_gift_anim.play("open_gift")
	#sound_Click.play()
	pass

func _on_task_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/tu_jian/task.tscn")
	pass

func _on_tu_jian_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/tu_jian.tscn")
	pass

func _on_to_game_title_pressed():
	get_tree().change_scene("res://scenes/layout/Title.tscn")
	pass

func _on_story_pressed():
	get_tree().change_scene("res://test/story.tscn")
	pass
