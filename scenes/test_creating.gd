extends Spatial

var sound_place
var sound_cancel
var to_block
var objects_panel
# Called when the node enters the scene tree for the first time.
func _ready():
	sound_place=$sound/placeBlock
	sound_cancel=$sound/CancelSound
	#get_tree().connect("node_added",self,"child")
	objects_panel=$objects
	pass # Replace with function body.
func child():
	print("添加了个gts")
	pass
func add_block(point):
	to_block=load("res://scenes/base_block_root.tscn").instance()
	print("添加的方块"+str(to_block))
	add_child(to_block)
	to_block.translation=point
	#print(block)
	sound_place.play()
	pass
func remove_block(block):
	remove_child(block)
	sound_cancel.play()
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
func _input(event):
	if event.is_action_pressed("backToMenu"):
		get_node("to_title").show()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	if event.is_action_pressed("Tab"):
		if objects_panel.visible:
			objects_panel.hide()
		else:
			objects_panel.show()
	pass
