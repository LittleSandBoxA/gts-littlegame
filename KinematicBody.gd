extends RigidBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var size=Vector3(1,1,1)
var line_speed=Vector3(0,0,2)#前进线性速度
var walk_back_line_speed=Vector3(0,0,-1)
var player
var tans=Vector3(0,0,1)
var anim 
var sound
var miku
func _ready():
	#斜坡停止最小值
	#上方向，用来测量什么是一个墙 ，什么是一个地板，什么是一个天花板 ，如果设置到默认的Vector(0,0,0)每样东西是慎重考虑的一个墙，这对topdown游戏类型有用
	miku=get_node("miku")
	sound=get_node("walk")
	anim=get_node("miku/AnimationPlayer")
	player=get_node("miku")
	pass

func _process(delta):
	#print("这是主逻辑线程")
	if Input.is_action_pressed("walk"):
		tans.z=0.5
		translate(tans)
		anim.play("walk")
	if Input.is_action_pressed("rotate_left"):
		rotate_y(1*delta)
	if Input.is_action_pressed("rotate_right"):
		rotate_y(-1*delta)
	if Input.is_action_pressed("walk_back"):
		tans.z=-0.5
		translate(tans)
	
	pass
func grow():
	miku.grow()
	pass
func stopGrow():
	miku.stopGrow()
	pass
func _input(event):
	if event.is_action_pressed("click"):
		anim.play("grab")
		#anim.play("up_and_eat")
		#z to grow
	if event.is_action_pressed("grow"):
		miku.growOnce()
		var big_sfx=get_node("AudioStreamPlayer2D")
		big_sfx.play()
	if event.is_action("walk"):
		sound.play()
	if event.is_action_released("walk"):
		sound.stop()
	pass

