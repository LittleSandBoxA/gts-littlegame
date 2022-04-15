extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#初始金币
var Defualt_value=1000
#加载后的金币值
var saved_value
var display
# Called when the node enters the scene tree for the first time.
func _ready():
	var saved_game=File.new()
	display=get_node("Label")
	print("初始判断")
	if not saved_game.file_exists("user://test.txt"):
		print("存档不存在")
		saved_game.close()
	else:
		saved_game.open("user://test.txt",File.READ)
		print_debug("存档存在，加载中...")
		var game_data=parse_json(saved_game.get_line())
		print_debug(game_data)
		get_node("Label").text=str(game_data.coin)
		saved_value=int(game_data.coin)
		print_debug("加载后的金币值"+str(saved_value))
		saved_game.close()
	pass 
#func _process(delta):
#	pass
func save_coin(value):
	var now_Value=saved_value+value
	var raw_data={"coin":now_Value}
	var data=to_json(raw_data)
	var save_game=File.new()
	print("存档中...")
	save_game.open("user://test.txt",File.WRITE_READ)
	save_game.store_line(data)
	save_game.close()
	display.text=str(now_Value)
	#save_game.open(
	pass
