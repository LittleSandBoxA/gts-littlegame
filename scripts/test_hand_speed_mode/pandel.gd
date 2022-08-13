extends Panel

var can_grow=true
var anim
var clicks_display
var hand_speed_display
var root
var timer#计时器

func _ready():
	root=find_parent("root")
	timer=root.get_node("Timer")
	anim=get_tree().current_scene.get_node("anim")
	clicks_display=get_node("clicks")
	hand_speed_display=get_node("hand_speed")
	pass 

func _process(delta):
	pass


func _on_Panel_mouse_entered():
	can_grow=false
	pass 


func _on_Panel_visibility_changed():
	if self.visible==true:
		can_grow=false
		clicks_display.text = clicks_display.text + str(root.clicks) + "次"
		hand_speed_display.text = hand_speed_display.text + str(timer.hand_speed) + "次/秒"
		anim.play("胜利")
	pass
