extends Button

var root
var bag

func _ready():
	root=get_parent()
	bag=root.get_node("bag_root")
	pass
func _on_btn_bag_pressed():
	bag.show()
	pass
