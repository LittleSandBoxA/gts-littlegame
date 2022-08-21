extends Spatial

func _ready():
	var s=NetworkedMultiplayerENet.new()
	var ook=s.create_server(1026,5,0,0)
	print(ook)
	if ook==0:
		print("创建服务器成功")
	get_tree().set_network_peer(s)
	
	pass
