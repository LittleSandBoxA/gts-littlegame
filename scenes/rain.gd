extends RigidBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pos
# Called when the node enters the scene tree for the first time.
func _ready():
	#print("rain的位置"+str(self.translation))
	pos=self.translation
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(pos)
	pass
