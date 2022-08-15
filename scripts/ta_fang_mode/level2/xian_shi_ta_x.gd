extends StaticBody

var enter
var del_btn
var real_tower
var root
var tower_display

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
