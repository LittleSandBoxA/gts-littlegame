extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#是否删除塔
export var speed=1
var del
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	del=self.pressed
	if self.pressed:
		self.text="x2"
		speed=2
	else:
		self.text="x1"
	pass
