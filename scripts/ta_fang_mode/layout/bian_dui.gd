extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var bian_dui_1
var bian_dui_2
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("bian_dui")
	bian_dui_1=root.get_node("bian_dui_1")
	bian_dui_2=root.get_node("bian_dui_2")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_btn_1_pressed():
	bian_dui_1.show()
	bian_dui_2.hide()
	
	pass # Replace with function body.


func _on_btn_2_pressed():
	bian_dui_1.hide()
	pass # Replace with function body.
