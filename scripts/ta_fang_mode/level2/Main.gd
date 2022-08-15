extends Spatial

var dies = 0
var win = false 
var dies_display
var my_pressed = false
var small_gts = Array()
onready var Rhea = load("res://ready_scene/models/character/rhea/rhea_spatial.tscn")
onready var RheaScript = load("res://scripts/ta_fang_mode/script/Enemy/Rhea.gd")
func _ready():
	dies_display = $dies
	win = $win
	#$BornEnemy/rhea/AnimationPlayer.get_animation("女性走路气质001").loop = true
	#$BornEnemy/rhea/AnimationPlayer.play("女性走路气质001")
	#get_tree().connect("node_added",self,"nodeAdded")
	pass

func nodeAdded(gts):
	#small_gts.append(gts)
	#print("对象数组"+str(gts))
	pass
func _process(delta):
	dies_display.text=str(dies)
	if dies==40:
		my_pressed=true
		win.show()
	pass

func _on_pause_toggled(button_pressed):
	$pause_label.visible = button_pressed
	pass

func _on_pause_label_visibility_changed():
	if $pause_label.visible:
		get_tree().paused = true
	else:
		get_tree().paused = false
	pass 
#创建敌人
func _on_Timer_timeout():
	var rheaInstance = Rhea.instance()
	rheaInstance.script = RheaScript
	rheaInstance.get_node("AnimationPlayer").get_animation("女性走路气质001").loop = true
	rheaInstance.scale = Vector3(8,8,8)
	$BornEnemy.add_child(rheaInstance)
	pass

func _on_back_pressed():
	get_tree().change_scene("res://scenes/ta_fang_mode/TaFang.tscn")
	pass
