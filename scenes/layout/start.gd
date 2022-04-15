extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var scene
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=get_parent()
	scene=root.get_node("Sprite")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_start_pressed():
	print(scene)
	get_tree().change_scene("res://scenes/梦日记.tscn")
	pass # Replace with function body.
