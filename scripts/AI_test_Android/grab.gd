extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var anim
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=get_parent()
	anim=root.get_node("KinematicBody/miku/AnimationPlayer")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_grab_pressed():
	anim.play("grab")
	pass # Replace with function body.
