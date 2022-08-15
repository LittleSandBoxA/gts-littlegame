extends RayCast

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var pos
var ball_timer
var attack=0
signal timeStart

func _ready():
	root=get_parent().get_parent()
	pos=root.get_node("Position3D")
	ball_timer=root.get_node("Timer")
	pass 

func _process(delta):
	if is_colliding():
		print_debug("碰撞名称"+str(get_collider().name))
		if get_collider().name=="walk":
			emit_signal("timeStart")
		else:
			print_debug("没有碰撞")
			pass
	pass


func _on_RayCast_timeStart():
	ball_timer.myStart(4)
	print_debug("开始timer")
	pass
