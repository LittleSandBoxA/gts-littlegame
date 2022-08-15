extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var gts_count_display_root
var gts_count_now=0
#var gts
var born_pos
#实时gts数量
var real_display
var gts_name_display
var tip_anim

func _ready():
	root=find_parent("Level2")
	gts_count_display_root=root.get_node("bo_shu")
	gts_name_display=root.get_node("add_gts_name")
	real_display=gts_count_display_root.get_node("gts_now")
	print(real_display.text)
	born_pos=root.get_node("gts_born").translation
	tip_anim=root.get_node("tip/tip_anim")
	pass

#func _process(delta):
#	pass


func _on_Timer_timeout():
#	var gts_group=get_tree().get_nodes_in_group("gts")
#	#第一波
#	if gts_count_now<10:
#		gts_count_now+=1
#		var gts=load("res://ready_scene/models/character/rhea/rhea_spatial.tscn").instance()
#		gts_name_display.text="name:"+str(gts.name)
#		root.add_child(gts)
#		gts.add_to_group("gts")
#		print_debug("gts组"+str(get_tree().get_nodes_in_group("gts")))
#
#		gts.translation=born_pos
#		print_debug("gts组长度"+str(len(gts_group)))
#	#第二波
#	if gts_count_now==10:
#		tip_anim.play("tip_anim")
#	if gts_count_now==10 or gts_count_now>10:
#		var gts=preload("res://ready_scene/magic.tscn").instance()
#		root.add_child(gts)
#		gts_name_display.text="name"+str(gts.name)
#		gts.translation=born_pos
#		gts_count_now+=1
#	real_display.text=str(gts_count_now)
#
	pass
