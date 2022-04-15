extends Area

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("Duo_ren_game_test")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_area_entered(area):
	print(area.name)
	if area.name=="handArea":
		var anim=root.get_node("RigidBody/miku/AnimationPlayer")
		anim.play("up_and_eat")
	pass # Replace with function body.
