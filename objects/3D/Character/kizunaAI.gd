extends Spatial

var height = 1.56 #单位米
var weight = 46 #单位kg

func _ready():
	$AnimationPlayer.get_animation("女性走路气质001").loop = true
	#$AnimationPlayer.play("女性走路气质001")
	pass

func _process(delta):
	#rotate_y(2*delta)
	pass
