extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cost=0
var cost_display
# Called when the node enters the scene tree for the first time.
func _ready():
	cost_display=get_parent().get_node("cost")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_costTimer_timeout():
	cost+=1
	#print_debug("cost"+str(cost))
	cost_display.text=str(cost)
	pass # Replace with function body.
