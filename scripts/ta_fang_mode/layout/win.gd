extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var win_node 
var win_text
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("ta_fang_test")
	win_node=root.get_node("win_anim")
	win_text=root.get_node("win_test")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_win_pressed():
	win_text.show()
	win_node.play("win")
	pass # Replace with function body.
