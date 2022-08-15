extends Node2D

func _on_level_1_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/attack_tower.tscn")
	pass
	
func _on_level_2_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/level2.tscn")
	pass

func _on_coin_level_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/coin_level.tscn")
	pass
