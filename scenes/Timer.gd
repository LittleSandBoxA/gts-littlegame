extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var showResult
var currentTime
var timeDisplay
# Called when the node enters the scene tree for the first time.
func _ready():
	root=get_parent()
	showResult=root.get_node("Control/resultPanel")
	timeDisplay=root.get_node("Control/display_time")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	currentTime=get_time_left()
	#print("剩余时间"+str(currentTime))
	timeDisplay.text="剩余时间"+str(floor(currentTime))
	pass


func _on_Timer_timeout():
	print("时间到")
	showResult.show()
	pass # Replace with function body.
