extends BoneAttachment

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var rain
# Called when the node enters the scene tree for the first time.
func _ready():
	var skeroot=get_parent()
	var meshroot=skeroot.get_parent()
	var MMroot=meshroot.get_parent()
	root=MMroot.get_parent()
	rain=root.get_node("rain")
	addChild()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func addChild():
	add_child(rain,true)
	pass
