extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var dies=0
var win
var dies_display
var my_pressed=false
#rain gts
var small_gts=Array()
# Called when the node enters the scene tree for the first time.
func _ready():
	dies_display=$dies
	win=$win
	
	#get_tree().connect("node_added",self,"nodeAdded")
	pass # Replace with function body.

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
