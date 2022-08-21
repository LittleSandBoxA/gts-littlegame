extends Timer

var root
var showResult
var currentTime
var timeDisplay

func _ready():
	root=get_parent()
	showResult=root.get_node("Control/resultPanel")
	timeDisplay=root.get_node("Control/display_time")
	pass

func _process(delta):
	currentTime=get_time_left()
	#print("剩余时间"+str(currentTime))
	timeDisplay.text="剩余时间"+str(floor(currentTime))
	pass


func _on_Timer_timeout():
	print("时间到")
	showResult.show()
	pass
