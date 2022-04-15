extends Area

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var coll_times
var scene
# Called when the node enters the scene tree for the first time.
func _ready():
	scene=get_tree().current_scene.name
	#coll_times=get_tree().current_scene.get_node("")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ball_area_area_entered(area):
	#print(area.name)
	if area.name=="walk":
		if scene=="level2":
			pass	#area.get_parent().get_parent().queue_free()
	pass # Replace with function body.
