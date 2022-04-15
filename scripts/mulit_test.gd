extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var s=NetworkedMultiplayerENet.new()
	var ook=s.create_server(1026,5,0,0)
	print(ook)
	if ook==0:
		print("创建服务器成功")
	get_tree().set_network_peer(s)
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
