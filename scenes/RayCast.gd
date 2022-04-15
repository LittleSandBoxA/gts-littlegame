extends RayCast

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var point
var block
var root
var gts_panel
var allow_add_block=true
var size
var gun_sound
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("test_creating")
	gts_panel=root.get_node("gts_prototype")
	gun_sound=root.get_node("sound/gun")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	block=get_collider()
	if is_colliding():
		size=get_collider().get_scale()
		print(get_collider())
	if allow_add_block==false:
		set_process(false)
		set_process_input(false)
	if gts_panel.allow_place_block==false:
		set_process_input(false)
	if gts_panel.allow_place_block==true:
		set_process_input(true)
	pass

func _input(event):
	if event.is_action_pressed("mouseRight") and allow_add_block==false:
		size.x+=0.001
		size.y+=0.001
		size.z+=0.001
		block.set_scale(Vector3(1+size.x,1+size.y,1+size.z))
		gun_sound.play()
	if event.is_action_pressed("mouseRight") and allow_add_block==true:
		#point=get_collision_normal()
		point=get_collision_point()
		#print("碰撞"+str(get_collider()))
		#print(point)
		root.add_block(point)
		#root.add_child(block)
	if event.is_action_pressed("click") and allow_add_block==true:
		root.remove_block(block)
		print("获得到的方块"+str(block))
	pass