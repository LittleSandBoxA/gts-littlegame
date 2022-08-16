extends Node2D

var arrow
var move_sound
var index=0
#sound
var bgms#节点组
var level_1
var level_2
var w
#使用数组重构 audioplayer
onready var all_bgms = []
func _ready():
	move_sound = get_node("sound/EnterSound")
	arrow = get_node("arrow")
	bgms = get_tree().get_nodes_in_group("bgm")
	level_1 = get_node("sound/level")
	level_2 = get_node("sound/level2")
	w = get_node("sound/bgm2")
	pass
#重构
func _process(delta):
	if Input.is_action_just_pressed("z") and index == 0:
		level_2.stop()
		w.stop()
		level_1.play()
	if Input.is_action_just_pressed("z") and index == 1:
		level_1.stop()
		w.stop()
		level_2.play()
	if Input.is_action_just_pressed("z") and index == 2:
		level_1.stop()
		level_2.stop()
		w.play()
		
	pass
func _input(event):
	if event.is_action_pressed("ui_down"):
		if index<2:
			index+=1
			arrow.position=bgms[index].position
		move_sound.play()
	if event.is_action_pressed("ui_up"):
		if index>0:
			index-=1
			arrow.position=bgms[index].position
		move_sound.play()
	pass
