extends RigidBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var anim
var grabState=false
var cam_back
var cam
var root
var score_display
var weight_display
var sound_level
var Item
var fps_cam
var ItemStack_Pointer_index

var size

var speed#变大后的移动速度

var player
var distance_to_gts
var command_box
var New_AI
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("root")
	player=get_node("miku")

	fps_cam=root.get_node("KinematicBody/miku/fps")
	command_box=root.get_node("command_root")
	New_AI=root.get_node("newAI")
	Item=root.get_node("item_stack_root/item_Stack")
#	ItemStack_Pointer_index=root.get_node("item_stack_root/pointer").pointer_index
	
	sound_level=root.get_node("Game_over_root/sound/level")
	sound_level.play()
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	anim=get_node("miku/AnimationPlayer")
	#移动速度
	speed=anim.moveSpeed
	cam_back=root.get_node("KinematicBody/miku/behand")
	cam=root.get_node("KinematicBody/miku/Camera2")
	score_display=root.get_node("score_root/score_display")
	weight_display=root.get_node("score_root/weight_display")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#移动速度
	speed=anim.moveSpeed
	#print("实时速度"+str(speed*delta))
	distance_to_gts=self.translation.distance_to(New_AI.translation)
	size=player.get_scale()
	if Input.is_action_pressed("walk"):
		translate(Vector3(0,0,speed*delta))
		anim.play("walk")
	if Input.is_action_pressed("walk_back"):
		translate(Vector3(0,0,-speed*delta))
	if Input.is_action_pressed("rotate_left"):
		rotate_y(2*delta)
	if Input.is_action_pressed("rotate_right"):
		rotate_y(-2*delta)
	if Input.is_action_pressed("walk") and Input.is_action_pressed("run_faster"):
		translate(Vector3(0,0,20*delta))
		print("加速跑")	
	if Input.is_action_pressed("look_behind"):
		cam_back.make_current()
	if Input.is_action_just_released("look_behind"):
		cam.make_current()
	weight_display.text=str("体重"+str(anim.weight))
	score_display.text=str("分数"+str(anim.score))
	pass
func _input(event):
	if event.is_action_pressed("change_Camera_Mode"):
		fps_cam.make_current()
	if event is InputEventMouseMotion:
		if event.relative.x>0:
			fps_cam.rotation_degrees.x+=1
		if event.relative.x<0:
			fps_cam.rotation_degrees.x-=1
	#打开指定框(t or / )
	if event.is_action_pressed("T") or event.is_action_pressed("command"):
		command_box.show()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	if event.is_action_pressed("click"):
		anim.play("grab")
		#grabState=true
	"""if event is InputEventMouseMotion:
		if event.relative.y<0:
			if cam.rotation_degrees.x<86:
				cam.rotate_x(-0.1)
			#print(cam.rotation_degrees.x)
		if event.relative.y>0:
			if cam.rotation_degrees.x>-25:
				cam.rotate_x(0.1)"""
			#print(cam.rotation_degrees.x)
	pass
