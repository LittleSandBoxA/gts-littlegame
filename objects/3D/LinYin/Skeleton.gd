extends Skeleton

var walk_area
func _ready():
	#var root=find_parent("rain_walk")
	#print(root)
	#walk_area=root.get_node("RigidBody/walk")
	pass # Replace with function body.
#int life 提升到的生命值
func life_up(life):
	walk_area.lifes=life
	pass
