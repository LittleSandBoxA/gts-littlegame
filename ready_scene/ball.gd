extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pos_3d
var scene
func _ready():
	pos_3d=self.translation
	scene=get_tree().current_scene.name
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if scene=="level2":
		if(self.translation.z<10):
			translate(Vector3(0,0,2*delta))
	elif scene=="ta_fang_test":
		if self.translation.z<10:
			translate(Vector3(0,0,5*delta))
	elif scene=="coin_level":
		if self.translation.z<10:
			translate(Vector3(0,0,5*delta))
	pass
