extends Area


var die_sound
var scene
var life_display
var attack_tower_root
var hits=0
var lifes=4
var dies_display

func _ready():
	var root=find_parent("rain_walk")
	scene=get_tree().current_scene
	if scene.name=="ta_fang_test":
		attack_tower_root=scene.get_node(".")
		life_display=scene.get_node("life")
		
	pass

func _process(delta):
	if scene.name=="ta_fang_test":
		dies_display=get_tree().current_scene.get_node("dies")
	pass

func _on_Area_area_entered(area):
	#print(area.name)
	if area.name=="Area_home":
		attack_tower_root.all_life-=1
		life_display.text=str(attack_tower_root.all_life)
		get_parent().queue_free()
	if area.name=="ball_area":
		#球
		if scene.name=="level2":
			hits+=1
			lifes-=1
			area.get_parent().queue_free()
			if lifes==0:
				get_parent().get_parent().remove_from_group("gts")
				print_debug("从组中删除了一个gts")
				print_debug("删除后的组"+str(get_tree().get_nodes_in_group("gts")))
				print_debug("删除后的组的长度"+str(len(get_tree().get_nodes_in_group("gts"))))
				get_tree().current_scene.get_node(".").dies+=1
				get_parent().get_parent().queue_free()
		if scene.name=="ta_fang_test":
			dies_display.dies+=1
			area.get_parent().queue_free()
			get_parent().queue_free()
	pass # Replace with function body.

func _on_Area_body_entered(body):
	pass # Replace with function body.
