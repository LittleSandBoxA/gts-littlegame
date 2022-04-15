extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#增加的cost
var real_cost=0
var cost_node
# Called when the node enters the scene tree for the first time.
func _ready():
	cost_node=$cost
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass



func _on_costTimer_timeout():
	real_cost+=1
	cost_node.text=str(real_cost)
	#print_debug(real_cost)
	pass # Replace with function body.
