extends AnimationPlayer

func _ready():
	play("up_and_eat")
	pass

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name=="up_and_eat":
		print("yes")
		var miku=get_parent()
		var hand=miku.get_node("初音ミク/初音ミク_arm/Skeleton/hand")
		hand.removeChild_And_Grow()
	pass
