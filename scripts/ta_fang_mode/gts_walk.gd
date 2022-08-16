extends Spatial

var anim

func _ready():
	anim=$AnimationPlayer
	pass
func walk(delta):
	anim.play("walk")
	translate(Vector3(0,0,0.25*delta))
	pass
func _physics_process(delta):
	walk(delta)
	pass
