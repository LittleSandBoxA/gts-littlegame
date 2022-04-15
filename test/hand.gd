extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var godot
var godot2
var next=false
var to_godot_pos
var to_godot_pos_2
# Called when the node enters the scene tree for the first time.
func _ready():
	godot=get_parent().get_node("godot")
	godot2=get_parent().get_node("godot2")
	
	to_godot_pos_2=godot2.position-self.position
	print(to_godot_pos)
	print(to_godot_pos_2)

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	to_godot_pos=godot.position-self.position
	if self.position.y>godot2.position.y and next==false:
		self.translate(to_godot_pos_2*delta*0.15)
	print(self.position)
	if self.position.y<godot2.position.y:
		next=true
	if self.position.x<godot.position.x and next==true:
		self.translate(to_godot_pos*delta*0.15)
	"""if self.position.y>godot.position.y and next==false:
		self.translate(to_godot_pos*delta*0.15)
	print(self.position)
	if self.position.y<godot.position.y:
		next=true
		print(next)
	if next==true and self.position.x>godot2.position.x:
		self.translate(to_godot_pos_2*delta*0.15)"""
	pass
