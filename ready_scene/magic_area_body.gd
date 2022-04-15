extends Area

var life=8
var scene
var root
# Called when the node enters the scene tree for the first time.
func _ready():
	scene=get_tree().current_scene
	if scene.name=="level2":
		root=scene.get_node(".")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_magic_area_entered(area):
	#print(area.name)
	if area.name=="ball_area":
		life-=1
	if life==0:
		root.dies+=1
		area.get_parent().queue_free()
		get_parent().get_parent().queue_free()
	pass # Replace with function body.
