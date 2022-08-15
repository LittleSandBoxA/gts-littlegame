extends Control

var scene
var gts_now
var gts_all

func _ready():
	scene=get_tree().current_scene.name
	gts_all=get_node("gts_all")
	gts_now=get_node("gts_now")
	if scene=="level2":
		gts_all.text="40"
	pass 

func _process(delta):
	#gts_now.text="0"
	pass
