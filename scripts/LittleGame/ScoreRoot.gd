extends Node2D

func _ready():
	#print_debug("分数root")
	pass
	
func _set_height(value):
	$height.text = "身高：" + str(value)
	#print_debug("新的身高值：",value)
	pass
