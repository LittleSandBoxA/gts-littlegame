extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cam
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=get_parent()
	cam=root.get_node("Camera")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.pressed:
		if self.name=="up":
			cam.translate(Vector3(0,0,-2*delta))
		if self.name=="d_down":
			cam.translate(Vector3(0,0,2*delta))
	pass
func _on_back2_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/ta_fang_title.tscn")
	pass # Replace with function body.
