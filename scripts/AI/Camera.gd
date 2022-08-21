extends Camera


func _ready():
	pass 

func _input(event):
	if event.is_action_pressed("walk"):
		translate(Vector3(0,0,-5))
	pass
