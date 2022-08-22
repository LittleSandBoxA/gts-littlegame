extends Spatial

#此脚本用于3D模式的第三人称摄像机

var cam_rot_h = 0
var cam_rot_v = 0
#垂直范围限制
var cam_v_min = -55
var cam_v_max = 75
#灵敏度
var h_sense = 0.1
var v_sense = 0.1
#加速度
var h_accel = 10
var v_accel = 10

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$h/v/thirdCam.add_exception(get_parent())
	pass

func _input(event):
	if event is InputEventMouseMotion:
		cam_rot_h += -event.relative.x
		cam_rot_v += event.relative.y
		
	pass

func _physics_process(delta):
	cam_rot_v = clamp(cam_rot_v, cam_v_min, cam_v_max)
	$h.rotation_degrees.y = lerp($h.rotation_degrees.y, cam_rot_h, delta * h_accel)
	$h/v.rotation_degrees.x = lerp($h/v.rotation_degrees.x, cam_rot_v, delta * v_accel)
	pass
