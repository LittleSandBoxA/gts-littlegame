extends Node2D

func _set_height(value):
	$height.text = "身高：" + str(value)
	#print_debug("新的身高值：",value)
	pass
