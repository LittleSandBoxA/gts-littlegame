extends Spatial
var Myplayer
var startGrow
var Mycamera
# Called when the node enters the scene tree for the first time.
func _ready():
	Myplayer=get_parent()
	Mycamera=get_node("Camera")
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#开始变大
	if startGrow==true:
		Myplayer.size.x+=0.01
		Myplayer.size.y+=0.01
		Myplayer.size.z+=0.01
		#设置摄像机高度
		#Mycamera.translation.y+=0.01
		set_scale(Myplayer.size)
	if startGrow==false:
		Myplayer.size=Vector3(1,1,1)
		set_scale(Myplayer.size)
	pass
func grow_OneTime():
	set_scale(Myplayer.size)
	var real=get_scale()
	print(real)
	pass
func grow():
	startGrow=true
	print("开始变大")
	pass
func stopGrow():
	startGrow=false
	print("停止变大")
	pass
func growOnce():
		print("变大一次")
		Myplayer.size.x+=0.5
		Myplayer.size.y+=0.5
		Myplayer.size.z+=0.5
		set_scale(Myplayer.size)
		pass
func eatGrow():
	
	pass