extends Skeleton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var head=get_node("head2")
	var hand=get_node("hand")
	var foot=get_node("Leftfoot")
	var hand_pos=hand.translation.z#1.7
	#print(hand_pos)
	#手到脚的距离
	#var distance=abs(1.7)
	#print("手到脚的距离"+str(distance))
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
