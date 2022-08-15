extends Node2D

onready var EnterSound = $sound/EnterSound
onready var cancelSound = $sound/CancelSound

func _ready():
	var titleSound = $"sound/title"
	titleSound.play()
	pass
	
func _on_set_pressed():
	EnterSound.play()
	pass 


func _on_mod_button_down():
	pass 

func _on_mulit_pressed():
	EnterSound.play()
	get_tree().change_scene("res://scenes/layout/multi_room.tscn")
	pass

func _on_solo_pressed():
	EnterSound.play()
	get_tree().change_scene("res://scenes/AITest.tscn")
	pass

#buttons2
func _on_AI_test_pressed():
	cancelSound.play()
	get_tree().change_scene("res://scenes/AI_test.tscn")
	pass

func _on_language_pressed():
	EnterSound.play()
	$Panel.show()
	pass

func _on_how_to_play_pressed():
	$how_to_play.popup()
	pass 

func _on_sand_box_pressed():
	EnterSound.play()
	get_tree().change_scene("res://scenes/test_creating.tscn")
	pass 

func _on_ta_fang_pressed():
	EnterSound.play()
	get_tree().change_scene("res://scenes/ta_fang_mode/TaFang.tscn")
	pass

func _on_hand_pressed():
	EnterSound.play()
	get_tree().change_scene("res://scenes/test_hand_speed.tscn")
	pass
