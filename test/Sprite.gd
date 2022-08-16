extends Sprite

var mouse_pos
var three_d_pos
var cam

func _ready():
	cam = get_parent().get_node("Camera")
	pass

func _process(delta):
	mouse_pos = get_viewport().get_mouse_position()
	#print(mouse_pos)
	three_d_pos = cam.project_ray_normal(mouse_pos)
	print(three_d_pos)
	self.position = mouse_pos
	pass
