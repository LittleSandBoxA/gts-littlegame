extends Spatial

var Mytranslation=Vector3()
var rotate=Vector3()
func _ready():
	#translate_object_local(11,11,11)

	pass

func _process(delta):
	var node=$player
	if Input.is_action_pressed("walk"):
		Mytranslation=node.translation
		Mytranslation.z+=1
		node.translation=Mytranslation
	if Input.is_action_pressed("rotate_left"):
		rotate.y+=1
		node.rotation_degrees=rotate
		print(node.rotation_degrees)
	pass
