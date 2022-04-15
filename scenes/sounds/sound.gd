extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var bgm2
var bgm3
# Called when the node enters the scene tree for the first time.
func _ready():
	bgm2=get_node("bgm2")
	bgm3=get_node("bgm3")
	var scene=get_tree().current_scene.name
	if scene=="ta_fang_title":
		bgm2.play()
	if scene=="Android":
		bgm3.play()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
