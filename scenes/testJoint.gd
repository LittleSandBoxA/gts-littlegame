extends RigidBody


var move
var Myrotate
var s=Vector3(0,0,-0.01)

func _ready():
	pass
	
func move():
	move=true
	translate(s)
	pass
	
func Myrotate():
	Myrotate=true
	pass

func _process(delta):
	#rotate_y(0.1)
	if move==true:
		translate(s)
	if Myrotate==true:
		rotate_y(1*delta)
	pass
func _physics_process(delta):
	pass
