extends KinematicBody

onready var tree = $AnimationTree
func _ready():
	
	pass
	
func _process(delta):
	var a = tree.get_root_motion_transform()
	print(a.origin)
	pass
	
