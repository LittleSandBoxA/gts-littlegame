extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var time_display
var root
var hand_speed#手速
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("root")
	time_display=get_tree().current_scene.get_node("Label")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	time_display.text=str(floor(self.time_left))
	pass


func _on_Timer_timeout():
	print("时间到")
	hand_speed=root.clicks/20
	print("次数"+str(root.clicks))
	get_tree().current_scene.get_node("Panel").show()
	print("手速"+str(hand_speed)+"次/秒")
	pass # Replace with function body.
