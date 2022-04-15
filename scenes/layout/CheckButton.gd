extends CheckButton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var SFX_Enable
var sound_Enable
#声音设置类
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_CheckButton_toggled(button_pressed):
	print(self.pressed)
	if self.pressed:
		SFX_Enable=true
	elif !self.pressed:
		SFX_Enable=false
	pass # Replace with function body.


func _on_Check_bgm_toggled(button_pressed):
	print(button_pressed)
	if button_pressed:
		sound_Enable=true
	elif !button_pressed:
		sound_Enable=false
	pass # Replace with function body.
