extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var anim
# Called when the node enters the scene tree for the first time.
func _ready():
	anim=$AnimationPlayer
	pass # Replace with function body.
func walk(delta):
	anim.play("walk")
	translate(Vector3(0,0,0.25*delta))
	pass
func _physics_process(delta):
	walk(delta)
	pass
