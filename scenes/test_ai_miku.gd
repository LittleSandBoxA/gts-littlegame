extends KinematicBody

var anim
var grabState=false
var cam_back
var cam
var root
var weight_display
var sound_level
var Item
var fps_cam
var ItemStack_Pointer_index

var size

export var speed = 2 #变大后的移动速度

var player
var distance_to_gts
var command_box
var height = 1.5
onready var tween = $Tween
signal set_height
var vel = Vector3(0,0,0)
func _ready():
	if get_tree().current_scene.name == "AI_test":
		connect("set_height",get_parent().get_node("score_root"),"_set_height")
#	root=find_parent("root")
#	player=get_node("miku")
#
#	fps_cam=root.get_node("KinematicBody/miku/fps")
#	command_box=root.get_node("command_root")
#	New_AI=root.get_node("newAI")
#	Item=root.get_node("item_stack_root/item_Stack")
##	ItemStack_Pointer_index=root.get_node("item_stack_root/pointer").pointer_index
#
#	sound_level=root.get_node("Game_over_root/sound/level")
#	#sound_level.play()
#	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
#	anim=get_node("miku/AnimationPlayer")
#	#移动速度
#	#speed = 5
#	cam_back=root.get_node("KinematicBody/miku/behand")
#	cam=root.get_node("KinematicBody/miku/Camera2")
#	score_display=root.get_node("score_root/score_display")
#	weight_display=root.get_node("score_root/weight_display")
	pass # Replace with function body.
func _physics_process(delta):
	move_and_slide(vel *speed)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	vel.z = Input.get_action_strength("walk") - Input.get_action_strength("walk_back")
	#print_debug(vel)
	#移动速度
	#speed=anim.moveSpeed
	#print("实时速度"+str(speed*delta))
	#distance_to_gts=self.translation.distance_to(New_AI.translation)
	#size=player.get_scale()
	#bug修复 应该使用move and slide
#	if Input.is_action_pressed("walk_back"):
#		move_and_slide(Vector3(0,0,-speed))
#	if Input.is_action_pressed("rotate_left"):
#		rotate_y(2*delta)
#	if Input.is_action_pressed("rotate_right"):
#		rotate_y(-2*delta)
#	if Input.is_action_pressed("walk") and Input.is_action_pressed("run_faster"):
#		move_and_slide(Vector3(0,0,20))
#		print("加速跑")	
#	if Input.is_action_pressed("look_behind"):
#		cam_back.make_current()
#	if Input.is_action_just_released("look_behind"):
#		cam.make_current()
	#weight_display.text=str("体重"+str(anim.weight))
	#变小
	if Input.is_action_pressed("z"):
		self.scale *= 0.99
		if height > 0:
			height -= 0.9
			speed -= 1.05
			emit_signal("set_height",Utils.humanize_size(height))
	#变大
	if Input.is_action_pressed("x"):
		self.scale *= 1.01
		speed += 1.05
		height = 1.5*self.scale.x
		emit_signal("set_height",Utils.humanize_size(height))
	pass

func _input(event):
	#这个是grab
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == BUTTON_LEFT:
		pass
	if event.is_action_pressed("walk"):
		$rhea/rhea/AnimationPlayer.play("女性走路(气质001) 1800帧 可循环_bone")
	if event.is_action_released("walk"):
		$rhea/rhea/AnimationPlayer.stop()
	pass
