extends Panel

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var input_mode=["place_block","gts_edit"]
var allow_place_block=true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_gts_prototype_focus_entered():
	print("焦点进入")
	pass # Replace with function body.


func _on_gts_prototype_mouse_entered():
	print("禁止放置方块操作，进入属性操作模式")
	allow_place_block=false
	pass # Replace with function body.


func _on_gts_prototype_mouse_exited():
	print("进入常规操作")
	allow_place_block=true
	pass # Replace with function body.
