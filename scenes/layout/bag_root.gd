extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var ray
var cam
# Called when the node enters the scene tree for the first time.
func _ready():
	if get_tree().current_scene.name=="test_creating":
		ray=get_tree().current_scene.get_node("Camera/RayCast")
		cam=get_tree().current_scene.get_node("Camera")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if event.is_action_pressed("E"):
		show()
		Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)
	pass

func _on_bag_root_visibility_changed():
	if self.visible==true and get_tree().current_scene.name=="test_creating":
		cam.set_process(false)
		cam.set_process_input(false)
		ray.set_process_input(false)
		ray.set_process_input(false)
		ray.allow_add_block=false
	if self.visible==false and get_tree().current_scene.name=="test_creating":
		ray.allow_add_block=true
		cam.set_process(true)
		cam.set_process_input(true)
		ray.set_process(true)
		ray.set_process_input(true)
	pass # Replace with function body.
