extends Spatial

var clicks=0
var gts
var current_size
var add_size=0
var click_sound
var can_process
var anim
var touch
onready var rhea = $rhea
onready var tween = $Tween
onready var big = $big

var height = 1.5
#缩放倍数
export var mulit_scale = 1.01
func _ready():
#	gts=get_node("miku")
#	anim=get_node("anim")
#	click_sound=get_node("sound/EnterSound")
#	touch=InputEventScreenTouch.new()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	current_size=gts.get_scale()
#	#print(can_process)
#	can_process=get_node("Panel").can_grow
#	if can_process==false:
#		set_process_input(false)
	pass
	
func _input(event):
	if event.is_action_pressed("backToMenu"):
		get_tree().current_scene.get_node("exit").show()
		
	if event is InputEventScreenTouch and event.pressed == false:
		clicks += 1
		print_debug("变大！")
		var origin_scale = rhea.scale
		var to_scale = origin_scale * mulit_scale
		print_debug("原始缩放",origin_scale)
		print_debug("变大的缩放",to_scale)
		height *= mulit_scale
		tween.interpolate_property(rhea,"scale",origin_scale,to_scale,0.1,Tween.TRANS_LINEAR)
		tween.start()
		print_debug("tween之后的大小",rhea.scale)
		big.play()
		var height_human = stepify(height,0.01)
		if height < 1000:
			$height.text = str(height_human) + "m"
		elif height >= 1000:
			$height.text = str(height_human) + "km"
		pass
	pass
