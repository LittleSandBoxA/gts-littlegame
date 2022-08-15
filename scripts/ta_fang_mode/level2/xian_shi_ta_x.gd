extends StaticBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var enter
var del_btn
var real_tower
var root
var tower_display
# Called when the node enters the scene tree for the first time.
func _ready():
	root = find_parent("Level2")
	tower_display = root.get_node("tower_static")
	pass

func _process(delta):
	pass


func _on_tower_static_mouse_entered():
	enter=true
	pass


func _on_tower_static_mouse_exited():
	enter=false
	pass
