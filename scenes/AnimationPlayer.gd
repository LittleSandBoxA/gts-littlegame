extends AnimationPlayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var miku
var scale
var EatCounts=0
var score=0
var height=1.5
var weight=45
var root
var eat_sound
var grow_sound
var moveSpeed=5
# Called when the node enters the scene tree for the first time.
func _ready():
	miku=get_parent()
	root=find_parent("miku")
	eat_sound=root.get_node("sound/eat")
	grow_sound=root.get_node("sound/grow")
	scale=miku.get_scale()
	pass # Replace with function body.
func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name=="grab":
		pass
		"""var RainRes=load("res://rain.tscn")
		rain=RainRes.instance()
		var hand=miku.get_node("初音ミク/初音ミク_arm/Skeleton/hand")
		hand.add_child(rain)"""
	if anim_name=="up_and_eat":
		#print(scale)
		EatCounts+=1
		scale.x+=0.25
		scale.y+=0.25
		scale.z+=0.25
		miku.set_scale(scale)
		moveSpeed+=10
		#print("移动速度"+str(moveSpeed))
		eat_sound.play()
		grow_sound.play()
		var miku=get_parent()
		if EatCounts >= 1:
			#print("吃了几个小人"+str(EatCounts))
			score=10*EatCounts
			height+=0.1
			weight+=2
	pass # Replace with function body.
