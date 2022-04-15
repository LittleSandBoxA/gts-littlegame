extends AnimationPlayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	play("up_and_eat")
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name=="up_and_eat":
		print("yes")
		var miku=get_parent()
		var hand=miku.get_node("初音ミク/初音ミク_arm/Skeleton/hand")
		hand.removeChild_And_Grow()
	pass # Replace with function body.
