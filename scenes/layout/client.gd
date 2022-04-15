extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("Control")
	get_tree().connect("connected_to_server",self,"a")
	get_tree().connect("connection_failed",self,"failed")
	pass # Replace with function body.
func failed():
	print("连接失败")
	pass
func a():
	print("连接成功")
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_client_pressed():
	var root=get_parent()
	var ip=root.get_node("ip")
	var net=NetworkedMultiplayerENet.new()
	var success=net.create_client(ip.text,1026)
	print(ip.text)
	get_tree().set_network_peer(net)
	net.connect("connection_succeeded",self,"a")
	if success==0:
		print("创建客户端成功")
	else:
		print("创建客户端失败")
	if get_tree().is_network_server()==false:
		print("正在连接到服务器！")
		root.hide()
		var scene=load("res://scenes/多人游戏测试.tscn").instance()
		root.add_child(scene)
		rpc("a")
	#get_tree().change_scene("res://scenes/多人游戏测试.tscn")
	pass # Replace with function body.
