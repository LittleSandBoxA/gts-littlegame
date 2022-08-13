extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#俯视图
var up_third_mode
#鼠标模式，默认显示
var CamMode="0"
#摄像机模式，默认第一人称和第三人称，附加一个俯视图
var fpsCam#第一人称相机
var thirdCam
var up_third_cam
var toTitle
var grabIcon
# Called when the node enters the scene tree for the first time.
func _ready():
	fpsCam=get_node("miku/miku/fps")
	thirdCam=get_node("miku/miku/third_cam")
	up_third_cam=get_node("up_third")
	toTitle=get_node("Control/toTitle")
	grabIcon=get_node("miku/miku/hand")
	pass
func _process(delta):
	#if up_third_mode==true:
		#print("拦截第一人称控制")
	if CamMode=="third":
		grabIcon.hide()
	if CamMode=="fps":
		grabIcon.show()
	if CamMode=="up_third":
		grabIcon.hide()
	pass
func _input(event):
	if event.is_action_pressed("backToMenu"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		toTitle.show()
	if Input.is_action_just_pressed("change_Camera_Mode"):
		if up_third_cam.is_current():
			fpsCam.make_current()
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			CamMode="fps"
			print("当前模式"+str(CamMode))
			return
		if fpsCam.is_current():
			thirdCam.make_current()
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			CamMode="third"
			print("当前模式"+str(CamMode))
			return
		if thirdCam.is_current():
			up_third_cam.make_current()
			up_third_mode=true
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			CamMode="up_third"
			print("当前模式"+str(CamMode))
			return
		
	pass	
