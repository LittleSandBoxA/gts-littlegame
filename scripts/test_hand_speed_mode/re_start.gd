extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var click_sound
# Called when the node enters the scene tree for the first time.
func _ready():
	click_sound=get_tree().current_scene.get_node("sound/EnterSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_re_start_pressed():
	get_parent().hide()
	click_sound.play()
	get_tree().change_scene("res://scenes/test_hand_speed.tscn")
	pass # Replace with function body.
