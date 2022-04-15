extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var pos_3d
var gun_sound
signal timeStart
# Called when the node enters the scene tree for the first time.
func _ready():
	root=get_parent()
	gun_sound=get_parent().get_node("sound/gun")
	pos_3d=root.get_node("Position3D")
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func myStart(timeLeft):
	start(timeLeft)
	print_debug("开始计数")
	pass
func _on_Timer_timeout():
	print_debug("添加一个魔法球")
	var ball=load("res://ready_scene/ta_fang_mode/ball.tscn").instance()
	pos_3d.add_child(ball)
	gun_sound.play()
	pass 
