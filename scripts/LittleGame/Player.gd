extends KinematicBody

var anim
var grabState = false
onready var selfCamera = $selfCam
onready var fpsCamera = $fps
onready var thirdCamera = $CameraRoot/h/v/thirdCam
var weight_display
var sound_level

#当前速度
var speed = 0
var walk_speed = 2
var run_speed = 5
var height = 1.5

var vel = Vector3(0,0,0)
var direction = Vector3(0,0,0)
#加速度
var accel = 6
#纵向速度
var vertical_vel = 0
var gravity = 20
var angular_accel = 7
signal set_height
var mobile_control = false
onready var mesh = $"rhea/レアV1 12/レアV1 12_arm/Skeleton/レアV1 12_mesh"
onready var rhea = load("res://ready_scene/models/character/rhea/rhea_spatial.tscn")
onready var KizunaAI = load("res://objects/3D/Character/kizunaAI.tscn")
var currentModel

func _ready():
	currentModel = $rhea
	if get_tree().current_scene.name == "SinglePlayer":
		var err1 = connect("set_height",get_parent().get_node("ScoreRoot"),"_set_height")
		if err1 != OK:
			print_debug("链接set_height信号出错了",err1)
		
	pass
# warning-ignore:unused_argument
func _physics_process(delta):
	# warning-ignore:return_value_discarded
	if mobile_control:
		#direction = direction.rotated(Vector3.UP, h_rot).normalized()
		speed = walk_speed
		currentModel.get_node("AnimationPlayer").play("女性走路气质001")
		
	if mobile_control == false:
		if Input.is_action_pressed("W") or Input.is_action_pressed("S") or Input.is_action_pressed("A") or Input.is_action_pressed("D"):
			var h_rot = $CameraRoot/h.global_transform.basis.get_euler().y
			direction = Vector3(0,0,Input.get_action_strength("W") - Input.get_action_strength("S")).rotated(Vector3.UP, h_rot).normalized()
			if Input.is_action_pressed("run_faster"):
				speed = run_speed
				currentModel.get_node("AnimationPlayer").play("有力的女性跑步")
			else:
				speed = walk_speed
				currentModel.get_node("AnimationPlayer").play("女性走路气质001")
		else:
			speed = 0
			currentModel.get_node("AnimationPlayer").stop()
	#vel = lerp(vel, direction * speed , delta * accel)
	#使用此方法实现移动速度随缩放变化
	speed = speed * currentModel.scale.x 
	vel = lerp(vel, direction * speed , delta * accel)
	move_and_slide(vel + Vector3.DOWN * vertical_vel, Vector3.UP)
	if not is_on_floor():
		vertical_vel += gravity * delta
	else:
		vertical_vel = 0
	mesh.rotation.y = lerp_angle(mesh.rotation.y, atan2(direction.x, direction.z), delta * angular_accel)
	pass
	
var sizeChangeRate = 0.7

func _process(delta):
	if Input.is_action_pressed("x"):
		grow(delta)
	if Input.is_action_pressed("z"):
		shunk(delta)
	#print_debug(direction)
	pass

#func _input(event):
#	#这个是grab
#	#if event is InputEventMouseButton and event.is_pressed() and event.button_index == BUTTON_LEFT:
##		pass
##	if event.is_action_released("walk"):
##		$rhea/AnimationPlayer.stop()
##		speed = 2
##	if event.is_action_released("look_behind"):
##		thirdCamera.make_current()
##		pass
#	pass
func grow(delta):
	currentModel.scale = currentModel.scale *(1 + sizeChangeRate * delta)
	$CollisionShape.scale = currentModel.scale
	$CameraRoot.scale = currentModel.scale
	height = 1.5 * currentModel.scale.y
	emit_signal("set_height",Utils.humanize_size(height))
	pass
	
func shunk(delta):
	currentModel.scale = currentModel.scale *(1 - sizeChangeRate * delta)
	$CameraRoot.scale = currentModel.scale
	$CollisionShape.scale = currentModel.scale
	height = 1.5 * currentModel.scale.y
	emit_signal("set_height",Utils.humanize_size(height))
	pass
	
#持续被触发，这里用于接收持续发出的信号
func _on_up_pressed():
	mobile_control = true
	var h_rot = $CameraRoot/h.global_transform.basis.get_euler().y
	direction = Vector3(0,0,1).rotated(Vector3.UP, h_rot).normalized()
	#print_debug("mobile_control:",mobile_control)
	#print_debug(direction)
	pass

func _on_grow_pressed(delta):
	#print_debug("grow")
	grow(delta)
	pass

func _on_shrunk_pressed(delta):
	shunk(delta)
	pass

func _on_up_released():
	mobile_control = false
	pass 


func _on_changeModel_toggled(button_pressed):
	if button_pressed:
		$rhea.queue_free()
		var kiz = KizunaAI.instance()
		kiz.scale = Vector3(0.05,0.05,0.05)
		currentModel = kiz
		mesh = currentModel.get_node("Kizunaai/Kizunaai_arm/Skeleton/Kizunaai_mesh")
		add_child(kiz)
		pass
	else:
		$kizunaAI.queue_free()
		var rheaInstance = rhea.instance()
		currentModel = rheaInstance
		mesh = currentModel.get_node("レアV1 12/レアV1 12_arm/Skeleton/レアV1 12_mesh")
		add_child(rheaInstance)
		pass
	pass
