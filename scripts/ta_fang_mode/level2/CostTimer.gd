extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cost
var real_cost=0
# Called when the node enters the scene tree for the first time.
func _ready():
	cost=$cost
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_costTimer_timeout():
	real_cost+=1
	cost.text=str(real_cost)
	pass # Replace with function body.
