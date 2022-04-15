extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var test_node
var display
# Called when the node enters the scene tree for the first time.
func _ready():
	display=get_parent().get_node("display")
	test_node=get_parent().get_node("LineEdit")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_savee_pressed():
	var data={"test":test_node.text}
	var save_data=to_json(data)
	var save_File=File.new()
	save_File.open("user://my_test.txt",File.WRITE_READ)
	var path=save_File.get_path_absolute()
	display.text=str(path)
	save_File.store_line(save_data)
	save_File.close()
	pass # Replace with function body.


func _on_load_pressed():
	var save_File=File.new()
	save_File.open("user://my_test.txt",File.READ)
	var data=parse_json(save_File.get_line())
	display.text=str(data)
	save_File.close()
	pass # Replace with function body.
