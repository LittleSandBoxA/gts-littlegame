extends StaticBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var enter
var sprite
# Called when the node enters the scene tree for the first time.
func _ready():
	sprite=get_parent().get_node("Sprite")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
# Replace with function body.


func _on_StaticBody2D1_input_event(viewport, event, shape_idx):
	if event is InputEventMouseMotion:
		print(event)
		sprite.position=self.position

	#print(viewport)
	pass # Replace with function body.


func _on_StaticBody2D1_mouse_exited():
	sprite.position=Vector2(0,0)
	pass # Replace with function body.
