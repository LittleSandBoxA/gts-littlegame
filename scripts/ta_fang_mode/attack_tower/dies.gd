extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var dies=0
var win_display
var coin_node
# Called when the node enters the scene tree for the first time.
func _ready():
	coin_node=get_parent().get_node("coin")
	win_display=get_parent().get_node("win2")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(dies)
	if dies==19:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().paused=true
		win_display.show()
	pass
