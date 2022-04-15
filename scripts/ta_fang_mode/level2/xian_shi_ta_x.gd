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
	root=find_parent("level2")
	tower_display=root.get_node("tower_static")
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_tower_static_mouse_entered():
	enter=true
	pass # Replace with function body.


func _on_tower_static_mouse_exited():
	enter=false
	pass # Replace with function body.
