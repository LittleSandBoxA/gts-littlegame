extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var game_NetWork_State
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("Control")
	get_tree().connect("network_peer_connected",self,"co")
	
	pass # Replace with function body.
func _co():
	print("连接到network_peer")
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_localServe_pressed():
	print("正在建立本地服务器...")
	game_NetWork_State="Local server"
	print("网络状态"+game_NetWork_State)
	var local_Sever=NetworkedMultiplayerENet.new()
	var ook=local_Sever.create_server(1026,5,0,0)
	if ook==0:
		print("创建服务器成功")
	else:
		print("创建服务器失败")
	get_tree().set_network_peer(local_Sever)
	get_tree().connect("network_peer_connected",self,"_co")
	var net_ID=get_network_master()
	print(net_ID)
	if get_tree().is_network_server():
		print("本地主机")
		root.hide()
		var scene=load("res://scenes/多人游戏测试.tscn").instance()
		root.add_child(scene)
	else:
		print("未知错误")
	pass # Replace with function body.
