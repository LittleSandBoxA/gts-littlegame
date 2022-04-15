extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sound
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("bag_root")
	sound=root.get_node("sound/pointer2")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if event.is_action_pressed("click"):
		sound.play()
	pass
