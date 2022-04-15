extends CheckButton
#切换操作模式
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cam
var root
var sha_mo
var click
# Called when the node enters the scene tree for the first time.
func _ready():
	root=get_parent()
	sha_mo=root.get_node("sand_root/StaticBody")
	cam=get_parent().get_node("Camera")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
"""func _process(delta):
	
	pass"""


func _on_cao_zuo_mode_toggled(button_pressed):
	if button_pressed:
		click=true
		cam.set_process(false)
		sha_mo.can_input=false
		self.text="buildMode"
	else:
		cam.set_process(true)
		sha_mo.can_input=true
		self.text="MoveMode"
	pass # Replace with function body.
