extends AnimationPlayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var newAI
var size
#启动走到下一个小人的开关
var next=false
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("newAI")
	size=root.get_scale()
	newAI=get_parent()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	#抓取+吃+变大+巡逻
	if anim_name=="grabB":
		play("eatB")
		size.x+=0.25
		size.y+=0.25
		size.z+=0.25
		newAI.set_scale(size)
		next=true
		print("AI大小"+str(size))
		print("移动到下个目标")
	pass # Replace with function body.
