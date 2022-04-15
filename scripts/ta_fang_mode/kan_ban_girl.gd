extends TextureButton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var message
var click_sound
# Called when the node enters the scene tree for the first time.
func _ready():
	message=get_parent().get_node("Label")
	click_sound=get_parent().get_node("sound/EnterSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	message.show()
	click_sound.play()
	pass # Replace with function body.
