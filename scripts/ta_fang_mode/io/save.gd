extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var coin
var root
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("ta_fang_test")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	coin=int(root.get_node("coin/Label").text)
	pass
func save():
	var save_dict={"coin":coin}
	return save_dict
	pass
func save_game():
	var save_game=File.new()
	save_game.open("user://test.txt",File.WRITE)
	var save=call("save")
	print(save)
	save_game.store_line(to_json(save))
	print(save_game.get_path_absolute())
	save_game.close()
	pass
func _on_save_pressed():
	save_game()
	pass # Replace with function body.
