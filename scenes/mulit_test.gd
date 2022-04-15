extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sound
# Called when the node enters the scene tree for the first time.
func _ready():
	sound=get_node("sound/level2")
	sound.play()
	add_player()
	pass # Replace with function body.
func add_player():
	var client_player=load("res://player.tscn").instance()
	add_child(client_player)
	client_player.translation=Vector3(10,10,10)
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
