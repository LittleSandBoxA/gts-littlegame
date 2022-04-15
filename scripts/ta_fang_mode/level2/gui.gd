extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cam
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("level2")
	cam=root.get_node("Camera")
	pass 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.pressed and self.name=="up":
		cam.translate(Vector3(0,0,-3*delta))
	if self.pressed and self.name=="down":
		cam.translate(Vector3(0,0,3*delta))
	if self.pressed and self.name=="left":
		cam.translate(Vector3(-3*delta,0,0))
	if self.pressed and self.name=="right":
		cam.translate(Vector3(3*delta,0,0))
	if self.pressed and self.name=="x2":
		self.text="x2"
		Engine.time_scale=2
	if not self.pressed and self.name=="x2":
		self.text="x1"
		Engine.time_scale=1
	pass


func _on_caozuo_mode_pressed():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/ta_fang_title.tscn")
	pass # Replace with function body.
