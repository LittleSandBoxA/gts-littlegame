extends RigidBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var move
var Myrotate
var s=Vector3(0,0,-0.01)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func move():
	move=true
	translate(s)
	pass
func Myrotate():
	Myrotate=true
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#rotate_y(0.1)
	if move==true:
		translate(s)
	if Myrotate==true:
		rotate_y(1*delta)
	pass
func _physics_process(delta):
	pass
