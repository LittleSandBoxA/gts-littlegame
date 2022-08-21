extends Spatial

var clicks = 0
var click_sound
var can_process
var touch
onready var rhea = $rhea
onready var rheaAnim = $rhea/AnimationPlayer
onready var tween = $Tween
onready var big = $big
onready var TimeDislay = $Label
onready var timer = $Timer
var height = 1.5
var hand_speed = 0
#缩放倍数
export var mulit_scale = 1.01
func _ready():
	pass
	
func _input(event):
	if event is InputEventScreenTouch and event.pressed == false:
		clicks += 1
		var origin_scale = rhea.scale
		var to_scale = origin_scale * mulit_scale
		height *= mulit_scale
		rheaAnim.play("jump")
		tween.interpolate_property(rhea,"scale",origin_scale,to_scale,0.1,Tween.TRANS_LINEAR)
		tween.start()
		big.play()
		var height_human = stepify(height,0.01)
		if height < 1000:
			$height.text = str(height_human) + "m"
		elif height >= 1000:
			$height.text = str(height_human) + "km"
		pass
	pass

func _on_back_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/layout/Title.tscn")
	pass
	
func _process(delta):
	TimeDislay.text = str(floor(timer.time_left))
	pass
	
func _on_Timer_timeout():
	hand_speed = clicks/20
	$Panel.show()
	pass
