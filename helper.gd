extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var Mytranslation=Vector3()
var rotate=Vector3()
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	#translate_object_local(11,11,11)

	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
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
