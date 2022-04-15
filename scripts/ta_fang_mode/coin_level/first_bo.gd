extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var born_1_pos
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("coin_level")
	born_1_pos=root.get_node("enemy_born_1")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_first_timeout():
	print_debug("第一波来了")
	var i=0
	for i in 5:
		var gts=load("res://walk.tscn").instance()
		born_1_pos.add_child(gts)
		gts.rotation_degrees.y+=-90
	pass # Replace with function body.
