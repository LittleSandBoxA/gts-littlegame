extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var gts
var pos_to_gts
var pos
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("ta_fang_test")
	gts=root.get_node("Scene Root/Position3D")
	pos=self.translation
	print(gts.translation)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pos_to_gts=self.translation-gts.translation
	translate(pos_to_gts*0.15*delta)
	pass
