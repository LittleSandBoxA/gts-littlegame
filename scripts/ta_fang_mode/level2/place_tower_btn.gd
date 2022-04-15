extends TextureButton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var clicked=false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if self.pressed:
		self.rect_global_position=get_viewport().get_mouse_position()
		if Input.is_action_pressed("click"):
			clicked=self.pressed
			print("tower_btn_clicked:"+str(self.pressed))
			hide()
	
	pass
