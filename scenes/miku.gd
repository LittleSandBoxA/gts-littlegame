extends RigidBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cam
var walk=Vector3(0,0,0.1)
var anim
var miku
var size=Vector3(1,1,1)
var score
var root
#主界面分数显示label
var display_score
var display_height
var display_weight
var Myaudio
var deg_y=0
var deg_x
#抓取节点
var grab
var grabVec
var grabMode=false#抓取模式
#失败界面
var lost
# Called when the node enters the scene tree for the first time.
func _ready():
	root=get_parent()
	grab=get_node("miku/hand")
	Myaudio=get_node("miku/Audio")
	cam=get_node("miku/fps")
	grabVec=Vector3(0,0,0)
	#第一人称相机的Y旋转值
	deg_y=cam.rotation_degrees.y
	deg_x=cam.rotation_degrees.x
	anim=get_node("miku/AnimationPlayer")
	miku=get_node("miku")
	
	lost=root.get_node("Control/lost")
	#主界面分数面板 初始化
	display_score=root.get_node("Control/score")
	display_height=root.get_node("Control/height")
	display_weight=root.get_node("Control/weight")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if anim.EatCounts >= 1:
		display_score.text="分数："+str(anim.score)
		display_height.text="身高："+str(anim.height)+"m"
		display_weight.text="质量："+str(anim.weight)+"kg"
	if self.translation.y<-5:
		print("掉出世界")
		lost.show()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		
	pass
func _physics_process(delta):
	#-------------第一人称操作
	if Input.is_action_pressed("walk") and root.CamMode=="fps" and grabMode==false:
		walk.z=0.1
		walk.z=5*delta
		print("正常移动")
		translate(walk)
	if Input.is_action_pressed("rotate_left") and root.CamMode=="fps" and grabMode==false:
		walk.z=0
		walk.x=5*delta
		translate(walk)
	if Input.is_action_pressed("rotate_right") and root.CamMode=="fps" and grabMode==false:
		walk.z=0
		walk.x=-5*delta
		translate(walk)
	if Input.is_action_pressed("walk_back") and root.CamMode=="fps" and grabMode==false:
		walk.z=-0.1
		translate(walk) 
	#------------第一人称操作
		#--------------------第三人称操作
	if Input.is_action_pressed("walk") and root.CamMode=="third":
		walk.z=0.1
		walk.x=0
		translate(walk)
	if Input.is_action_pressed("rotate_left") and root.CamMode=="third":
		walk.z=0
		walk.x=5*delta
		translate(walk)
	if Input.is_action_pressed("rotate_right") and root.CamMode=="third":
		walk.z=0
		walk.x=-5*delta
		translate(walk)
	if Input.is_action_pressed("walk_back") and root.CamMode=="third":
		walk.z=-0.1
		walk.x=0
		translate(walk)
	#-----------------------------第三人称----------
	if Input.is_action_pressed("camera_up") :
		cam.rotate_x(-1*delta)
	if Input.is_action_pressed("camera_down"):
		cam.rotate_x(1*delta)
	if Input.is_action_pressed("camera_left"):
		cam.rotate_y(1*delta)
	if Input.is_action_pressed("camera_right"):
		cam.rotate_y(-1*delta)
	#print("物理")
	
	pass
func _input(event):
	
	#第一人称和第三人称摄像机控制
	if event is InputEventMouseMotion and Input.get_mouse_mode()==Input.MOUSE_MODE_CAPTURED:
		#var y=deg2rad(event.relative.y)
		#var x=deg2rad(event.relative.x)
		#print("鼠标转换位置"+str(x)+str(y))
		#print(event.relative.y)
		if event.relative.x>0:
			#print("向右转")
			deg_y-=2.5
			#print(deg_y)
			self.rotation_degrees.y=deg_y
		if event.relative.x<0:
			#print("向L转")
			deg_y+=2.5
			self.rotation_degrees.y=deg_y
		if event.relative.y<0:
			#print("向上转")
			deg_x+=1
			#print(deg_x)
			cam.rotation_degrees.x=deg_x
			if deg_x>80:
				cam.rotation_degrees.x=80
				deg_x=80
		if event.relative.y>0:
			#print("向下转")
			deg_x-=1
			#print(deg_x)
			cam.rotation_degrees.x=deg_x
			if deg_x < -70:
				cam.rotation_degrees.x=-70
				deg_x=-70
	#摄像机控制结束
	#抓取模式
	if event.is_action_pressed("mouseRight"):
		grabMode=false
		print("抓取模式false")
	if event.is_action_pressed("click") and root.CamMode=="fps":
		#anim.play("grab")
		grabMode=true
		print("抓取模式true")
	if grabMode==true:
		print("-----------")
		print(grab.name)
		print(grab.translation)
		if Input.is_action_pressed("walk"):
			grabVec.z-=0.1
			grab.translate(grabVec)
			print("------")
			print("移动偏移值"+str(grabVec))
			print("------")
		if Input.is_action_pressed("walk_back"):
			grabVec.z+=0.1
			grab.translate(grabVec)
			print("移动偏移值"+str(grabVec))
			#print(grab.translation.x)
	#第三人称正常操作
	if event.is_action_pressed("click"):
		print("-------")
		print("第三人称点击")
		print("------")
		anim.play("grab")
	if Input.is_action_pressed("walk") and root.CamMode=="third":
		anim.play("walk")
	if Input.is_action_just_pressed("walk"):
		Myaudio.play()
	if Input.is_action_just_released("walk") and root.CamMode=="third":
		Myaudio.stop()
		anim.stop()
	#print("输入事件")
	pass