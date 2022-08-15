extends Spatial

var speed = 0.05

func _ready():
	$AnimationPlayer.play("女性走路气质001")
	pass

func _process(delta):
	translate(Vector3(0,0,1) * speed *delta)
	pass
