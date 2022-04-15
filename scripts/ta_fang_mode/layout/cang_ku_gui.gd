extends TextureButton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var click_sound
var tip
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=get_parent()
	click_sound=$click
	tip=root.get_node("tip")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_coin_pressed():
	click_sound.play()
	if self.pressed:
		tip.show()
	else:
		tip.hide()
	pass # Replace with function body.
