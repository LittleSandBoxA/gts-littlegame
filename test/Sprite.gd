extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mouse_pos
var three_d_pos
var cam
# Called when the node enters the scene tree for the first time.
func _ready():
	cam=get_parent().get_node("Camera")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	mouse_pos=get_viewport().get_mouse_position()
	#print(mouse_pos)
	three_d_pos=cam.project_ray_normal(mouse_pos)
	print(three_d_pos)
	self.position=mouse_pos
	pass
