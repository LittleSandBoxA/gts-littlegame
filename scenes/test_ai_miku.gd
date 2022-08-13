extends KinematicBody

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

export var speed = 1 #变大后的移动速度

var player
var distance_to_gts
var command_box
var New_AI
onready var tween = $Tween
# Called when the node enters the scene tree for the first time.
func _ready():
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

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#移动速度
	#speed=anim.moveSpeed
	#print("实时速度"+str(speed*delta))
	#distance_to_gts=self.translation.distance_to(New_AI.translation)
	#size=player.get_scale()
	#bug修复 应该使用move and slide
#	if Input.is_action_pressed("walk"):
#		move_and_slide(Vector3(0,0,speed).rotated(Vector3(0,1,0),deg2rad(rotation_degrees.y)))
#		anim.play("walk")
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
	#score_display.text=str("分数"+str(anim.score))
	pass
func _input(event):
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == BUTTON_LEFT:
		var newScale = self.scale *1.2
		tween.interpolate_property(self,"scale",Vector3(1,1,1),newScale, 0.5,Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		tween.start()
	pass
