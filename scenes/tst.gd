extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var hand=get_node("hand")
	print("手骨位置"+str(hand.get_position_in_parent()))
	var rain=get_node("rain")
	print("rain Before"+str(rain.get_position_in_parent()))
	move_child(rain,2)
	print("后来rain"+str(rain.get_position_in_parent()))
	var mesh=get_parent()
	var root=mesh.get_parent()
	var anim=root.get_node("AnimationPlayer")
	anim.play("walk",-1,1,false）
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
