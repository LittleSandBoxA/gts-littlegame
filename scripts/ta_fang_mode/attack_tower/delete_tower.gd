extends StaticBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var enter
var delete_tower
var scene
# Called when the node enters the scene tree for the first time.
func _ready():
	scene=get_tree().current_scene.name
	if scene=="level2":
		pass
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if scene=="ta_fang_test":
		delete_tower=get_tree().current_scene.get_node("del_tower").del
	if enter==true and delete_tower==true:
		get_parent().queue_free()
	pass


func _on_StaticBody_mouse_entered():
	enter=true
	pass # Replace with function body.


func _on_StaticBody_mouse_exited():
	enter=false
	pass # Replace with function body.
