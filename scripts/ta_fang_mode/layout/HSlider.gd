extends HSlider

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var size_text=1
var size_display
var gts
var root
var size=0
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("test_creating")
	gts=root.get_node("sand_box_gts")
	size_display=root.get_node("gts_prototype/size")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if gts.name=="sand_box_gts":
		gts.set_scale(Vector3(5,5,5))
	pass


func _on_HSlider_value_changed(value):
	print(gts.name)
	size_display.text="scale:"+str(value)+"m"
	size+=1
	pass # Replace with function body.
