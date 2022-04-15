extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var clicks=0
var gts
var current_size
var add_size=0
var click_sound
var can_process
var anim
var touch
# Called when the node enters the scene tree for the first time.
func _ready():
	gts=get_node("miku")
	anim=get_node("anim")
	click_sound=get_node("sound/EnterSound")
	touch=InputEventScreenTouch.new()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	current_size=gts.get_scale()
	#print(can_process)
	can_process=get_node("Panel").can_grow
	if can_process==false:
		set_process_input(false)
	pass
	
func _input(event):
	if event.is_action_pressed("backToMenu"):
		get_tree().current_scene.get_node("exit").show()
	if event is InputEventScreenTouch:
		if event.pressed==true:
			print(event.position)
			clicks+=1
			add_size+=0.0005 
			click_sound.play()
			anim.play("add")
			print(clicks)
			gts.set_scale(Vector3(current_size.x+add_size,current_size.y+add_size,current_size.z+add_size))
	"""if event.is_action_pressed("click") or touch.pressed==true:
		clicks+=1
		add_size+=0.0005 
		click_sound.play()
		anim.play("add")
		#print(clicks)
		gts.set_scale(Vector3(current_size.x+add_size,current_size.y+add_size,current_size.z+add_size))
"""
	pass
