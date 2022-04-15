extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mroot
var lan#语言设置
# Called when the node enters the scene tree for the first time.
func _ready():
	mroot=get_parent()
	lan=mroot.get_node("Panel")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_language_button_down():
	lan.show()
	mroot.EnterSound.play()
	pass # Replace with function body.
