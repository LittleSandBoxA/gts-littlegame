extends Spatial

var sound
var back
var cam
#获得鼠标位置
var can_input
var mouse_pos
#显示放置防御塔位置的节点
var place_tower_display
#总生命
var all_life=20
var sha_mo
var game_over_display

func _ready():
	back=$back
	sound=$sound/ta_fang
	sound.play()
	cam=$Camera
	game_over_display=$game_over
	sha_mo=$sand_root/StaticBody
	place_tower_display=$ta_fang_place
	pass

func _process(delta):
	place_tower_display=$ta_fang_place.translation
	if all_life==0:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_tree().paused=true
		
		game_over_display.show()
		pass
	pass
func _input(event):
	#建造操作
	if event is InputEventScreenTouch:
		if event.pressed:
			#Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			sha_mo.can_input=true
			cam.set_process(true)
	if event.is_action_pressed("E"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		sha_mo.can_input=true
		cam.set_process(true)
	if event.is_action_pressed("Q"):
		sha_mo.can_input=false
		cam.set_process(false)
	if event.is_action_pressed("backToMenu"):
		back.show()
	pass
