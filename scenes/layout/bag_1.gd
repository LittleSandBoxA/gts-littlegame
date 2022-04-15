extends StaticBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sound 
var clicked=false
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("bag_root")
	sound=root.get_node("sound/pointer2")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if event.is_action_pressed("click") and clicked==true:
		print("clicked")
		sound.play()
	pass


func _on_bag_1_tree_entered():
	print("intoSceneTree")
	pass # Replace with function body.


func _on_StaticBody2D_mouse_entered():
	clicked=true
	sound.play()
	print("进入")
	pass # Replace with function body.


func _on_StaticBody2D_mouse_exited():
	clicked=false
	pass # Replace with function body.
