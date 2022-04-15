extends Position3D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var attack_sound
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=get_parent()
	attack_sound=root.get_node("sound/gun")
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
