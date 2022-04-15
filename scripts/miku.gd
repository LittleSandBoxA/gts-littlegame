extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var anim
var walk=Vector3(0,0,0.1)
# Called when the node enters the scene tree for the first time.
func _ready():
	anim=get_node("AnimationPlayer")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("walk"):
		translate(walk)
	if Input.is_action_pressed("rotate_left"):
		rotate_y(1*delta)
	if Input.is_action_pressed("rotate_right"):
		rotate_y(-1*delta)
	#rotate_y(0.5)
	pass
"""func playEat():
	var anim=get_node("AnimationPlayer")
	anim.play("up_and_eat")
	pass"""