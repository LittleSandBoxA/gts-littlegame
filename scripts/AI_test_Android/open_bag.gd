extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var bag
# Called when the node enters the scene tree for the first time.
func _ready():
	root=get_parent()
	bag=root.get_node("bag_root")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_btn_bag_pressed():
	bag.show()
	pass # Replace with function body.
