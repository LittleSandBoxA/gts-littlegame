extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sound
var clicked=false
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=get_parent()
	sound=root.get_node("sound/EnterSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if clicked==true and sound.is_playing()==false:
			get_tree().change_scene("res://scenes/layout/设置.tscn")
	pass


func _on_set_pressed():
	sound.play()
	clicked=true
	pass # Replace with function body.
