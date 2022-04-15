extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("test_creating")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_add_gts_pressed():
	var gts=load("res://ready_scene/sand_box_gts.tscn").instance()
	root.add_child(gts)
	print(gts.name)
	#get_tree().get_nodes_in_group().append()
	pass # Replace with function body.
