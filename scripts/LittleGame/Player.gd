extends KinematicBody

var anim
var grabState=false
onready var selfCamera = $selfCam
onready var fpsCamera = $fps
onready var thirdCamera = $thirdCam
var root
var weight_display
var sound_level
var Item
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
#	command_box=root.get_node("command_root")
#	Item=root.get_node("item_stack_root/item_Stack")
#	ItemStack_Pointer_index=root.get_node("item_stack_root/pointer").pointer_index
#
#	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
#	score_display=root.get_node("score_root/score_display")
#	weight_display=root.get_node("score_root/weight_display")
	pass
func _physics_process(delta):
	move_and_slide(vel *speed)

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
	if vel.z == 1 or vel.z == -1:
		#print_debug("走路")
		$rhea/AnimationPlayer.play("女性走路气质001")
	if (vel.z == 1 or vel.z == -1) and Input.is_action_pressed("run_faster"):
		#print_debug("加速跑")
		speed = 4
		$rhea/AnimationPlayer.play("有力的女性跑步")
	if Input.is_action_pressed("look_behind"):
		selfCamera.make_current()
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
	if event.is_action_released("walk"):
		$rhea/AnimationPlayer.stop()
		speed = 2
	if event.is_action_released("look_behind"):
		thirdCamera.make_current()
		pass
	pass
