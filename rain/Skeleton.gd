extends Skeleton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#
var walk_area
# Called when the node enters the scene tree for the first time.
func _ready():
	#var root=find_parent("rain_walk")
	#print(root)
	#walk_area=root.get_node("RigidBody/walk")
	pass # Replace with function body.
#int life 提升到的生命值
func life_up(life):
	walk_area.lifes=life
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
