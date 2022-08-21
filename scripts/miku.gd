extends Spatial

var anim
var walk=Vector3(0,0,0.1)

func _ready():
	anim=get_node("AnimationPlayer")
	pass

	if Input.is_action_pressed("walk"):
		translate(walk)
	if Input.is_action_pressed("rotate_left"):
		#rotate_y(1*delta)
		pass
	if Input.is_action_pressed("rotate_right"):
		#rotate_y(-1*delta)
		pass
	#rotate_y(0.5)
	pass
"""func playEat():
	var anim=get_node("AnimationPlayer")
	anim.play("up_and_eat")
	pass"""
