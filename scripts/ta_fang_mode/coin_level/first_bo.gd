extends Timer

var root
var born_1_pos

func _ready():
	root=find_parent("coin_level")
	born_1_pos=root.get_node("enemy_born_1")
	pass 

func _on_first_timeout():
	print_debug("第一波来了")
	for i in 5:
		var gts = load("res://walk.tscn").instance()
		born_1_pos.add_child(gts)
		gts.rotation_degrees.y += -90
	pass
