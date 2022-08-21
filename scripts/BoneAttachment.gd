extends BoneAttachment


var root
var rain

func _ready():
	var skeroot = get_parent()
	var meshroot = skeroot.get_parent()
	var MMroot = meshroot.get_parent()
	root = MMroot.get_parent()
	rain = root.get_node("rain")
	addChild()
	pass

func addChild():
	add_child(rain,true)
	pass
