extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var anim
# Called when the node enters the scene tree for the first time.
func _ready():
	anim=get_node("AnimationPlayer")
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	anim.play("walk")
	translate(Vector3(0,0,0.5*delta))
	pass
