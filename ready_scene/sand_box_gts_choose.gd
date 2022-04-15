extends StaticBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var node=0
var gts
var size=Vector3()
var root
var mesh
# Called when the node enters the scene tree for the first time.
func _ready():
	mesh=get_node("亞北ネル")
	pass # Replace with function body.

#'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.scale.x+=0.1*delta
	self.scale.y+=0.1*delta
	self.scale.z+=0.1*delta
	pass
func _physics_process(delta):
	pass
# Replace with function body.

func _on_StaticBody_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			print_debug(self.scale)
			self.scale.x+=1
			self.scale.y+=1
			self.scale.z+=1
	pass # Replace with function body.
