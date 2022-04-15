extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func load_game():
	var load_game=File.new()
	if not load_game.file_exists("user://test.txt"):
		print("存档不存在")
	else:
		print("存档存在,读取中...")
		load_game.open("user://test.txt",File.READ)
		#while not load_game.eof_reached():
		var current_line=parse_json(load_game.get_line())
		print(current_line.coin)	
		load_game.close()
	pass
func _on_load_pressed():
	load_game()
	pass # Replace with function body.
