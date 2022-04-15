extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var EnterSound
var cancelSound
var titleSound
# Called when the node enters the scene tree for the first time.
func _ready():
	EnterSound=get_node("sound/EnterSound")
	cancelSound=get_node("sound/CancelSound")
	titleSound=get_node("sound/title")
	titleSound.play()
	#Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	#pai_xu()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass