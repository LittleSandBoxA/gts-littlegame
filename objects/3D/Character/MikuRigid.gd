extends Spatial
var anim
var rain
var size
var player
func _ready():
	var root=get_parent()
	var player=root.get_node("miku")
	var miku=get_node("mikuAI/miku/AnimationPlayer")
	size=miku.scale
	rain=root.get_node("rain")
	anim=get_node("mikuAI/miku/AnimationPlayer")
func _process(delta):
	translate(Vector3(0.1,0,0))
	#rotate_y(1*delta)
	#print(self.translation)
	if self.translation.x >rain.translation.x+5:
		print_debug("ssasasd")
		print_debug(size)
		set_process(false)
	pass
func stop():
	set_process(false)
	pass
