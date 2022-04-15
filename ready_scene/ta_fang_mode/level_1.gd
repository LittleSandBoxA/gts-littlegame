extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_level_1_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/attack_tower.tscn")
	pass # Replace with function body.


func _on_level_2_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/level2.tscn")
	pass # Replace with function body.


func _on_coin_level_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/coin_level.tscn")
	pass # Replace with function body.
