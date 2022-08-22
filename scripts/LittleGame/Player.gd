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
var distance_to_gts
var command_box
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

func _ready():
	if get_tree().current_scene.name == "SinglePlayer":
		var err1 = connect("set_height",get_parent().get_node("ScoreRoot"),"_set_height")
		if err1 != OK:
			print_debug("链接set_height信号出错了",err1)
		
	pass
# warning-ignore:unused_argument
func _physics_process(delta):
	# warning-ignore:return_value_discarded
	if mobile_control:
		var h_rot = $CameraRoot/h.global_transform.basis.get_euler().y
		direction = direction.rotated(Vector3.UP, h_rot).normalized()
		speed = walk_speed
		$rhea/AnimationPlayer.play("女性走路气质001")
		
	if mobile_control == false:
		if Input.is_action_pressed("W") or Input.is_action_pressed("S") or Input.is_action_pressed("A") or Input.is_action_pressed("D"):
			var h_rot = $CameraRoot/h.global_transform.basis.get_euler().y
			direction = Vector3(0,0,Input.get_action_strength("W") - Input.get_action_strength("S")).rotated(Vector3.UP, h_rot).normalized()
			if Input.is_action_pressed("run_faster"):
				speed = run_speed
				$rhea/AnimationPlayer.play("有力的女性跑步")
			else:
				speed = walk_speed
				$rhea/AnimationPlayer.play("女性走路气质001")
		else:
			speed = 0
			$rhea/AnimationPlayer.stop()
	else:
		speed = 0
		$rhea/AnimationPlayer.stop()
	#vel = lerp(vel, direction * speed , delta * accel)
	#使用此方法实现移动速度随缩放变化
	speed = speed *$rhea.scale.x 
	vel = lerp(vel, direction * speed , delta * accel)
	move_and_slide(vel + Vector3.DOWN * vertical_vel, Vector3.UP)
	if not is_on_floor():
		vertical_vel += gravity * delta
	else:
		vertical_vel = 0
	var mesh = $"rhea/レアV1 12/レアV1 12_arm/Skeleton/レアV1 12_mesh"
	mesh.rotation.y = lerp_angle(mesh.rotation.y, atan2(direction.x, direction.z), delta * angular_accel)
	pass
	
var sizeChangeRate = 0.7
# warning-ignore:unused_argument
func _process(delta):
	#变小
	#重构
	if Input.is_action_pressed("z"):
		$rhea.scale = $rhea.scale *(1 - sizeChangeRate * delta)
		$CameraRoot.scale = $rhea.scale
		$CollisionShape.scale = $rhea.scale
		height = 1.5 * $rhea.scale.y
		emit_signal("set_height",Utils.humanize_size(height))
	#变大
	if Input.is_action_pressed("x"):
		$rhea.scale = $rhea.scale *(1 + sizeChangeRate * delta)
		$CollisionShape.scale = $rhea.scale
		$CameraRoot.scale = $rhea.scale
		height = 1.5 * $rhea.scale.y
		emit_signal("set_height",Utils.humanize_size(height))
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
	$rhea.scale = $rhea.scale *(1 + sizeChangeRate * delta)
	$CollisionShape.scale = $rhea.scale
	$CameraRoot.scale = $rhea.scale
	height = 1.5 * $rhea.scale.y
	emit_signal("set_height",Utils.humanize_size(height))
	pass
	
func shunk(delta):
	$rhea.scale = $rhea.scale *(1 - sizeChangeRate * delta)
	$CameraRoot.scale = $rhea.scale
	$CollisionShape.scale = $rhea.scale
	height = 1.5 * $rhea.scale.y
	emit_signal("set_height",Utils.humanize_size(height))
	pass
	
func _on_up_pressed():
	mobile_control = true
	direction = Vector3(0,0,1)
	#print_debug("mobile_control:",mobile_control)
	#print_debug(direction)
	pass

func _on_up_released():
	mobile_control = false
	direction = Vector3(0,0,0)
	pass

func _on_grow_pressed(delta):
	#print_debug("grow")
	grow(delta)
	pass

func _on_shrunk_pressed(delta):
	shunk(delta)
	pass
