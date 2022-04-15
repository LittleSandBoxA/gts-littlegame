extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var scene
var gts_now
var gts_all
# Called when the node enters the scene tree for the first time.
func _ready():
	scene=get_tree().current_scene.name
	gts_all=get_node("gts_all")
	gts_now=get_node("gts_now")
	if scene=="level2":
		gts_all.text="40"
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#gts_now.text="0"
	pass
