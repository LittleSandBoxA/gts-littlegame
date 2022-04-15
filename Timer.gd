extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var time_display
var time_Left
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("root")
	time_display=root.get_node("score_root/time_display")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time_Left=get_time_left()
	time_display.text=str(floor(time_Left))
	pass


func _on_Timer_timeout():
	print("时间到，本局结束")
	pass # Replace with function body.
