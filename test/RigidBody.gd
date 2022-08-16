extends RigidBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var anim
var walk_sound
var walk_sound_state
# Called when the node enters the scene tree for the first time.
func _ready():
	anim=get_node("miku/AnimationPlayer")
	var root=find_parent("Duo_ren_game_test")
	walk_sound=root.get_node("sound/walk")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#walk_sound_state=walk_sound.is_playing()
	pass
func _physics_process(delta):
	if Input.is_action_pressed("walk"):
		translate(Vector3(0,0,5*delta))
		anim.play("walk")
	if Input.is_action_just_pressed("walk"):
		walk_sound.play()
	if Input.is_action_pressed("walk_back"):
		translate(Vector3(0,0,-5*delta))
		anim.play("walk")
	if Input.is_action_pressed("rotate_left"):
		rotate_y(5*delta)
		walk_sound.stop()
	if Input.is_action_pressed("rotate_right"):
		rotate_y(-5*delta)
		walk_sound.stop()
	pass
func _input(event):
	if event.is_action_pressed("click"):
		anim.play("grab")
	pass
