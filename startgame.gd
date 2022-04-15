extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var Entersound
func _ready():
	var root=get_parent()
	Entersound = root.get_node("sound/EnterSound")
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Button_button_down():
	Entersound.play()
	get_tree().change_scene("res://scenes/碰撞测试.tscn")
	pass # Replace with function body.
