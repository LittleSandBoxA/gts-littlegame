extends TextureButton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var clicked
var sprite
var sprite_pos
var ItemStack
var ItemStack_pos
var is_Mouse_Entered=false
var child#物品栏中的物品
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("bag_root")
	ItemStack=get_tree().get_nodes_in_group("ItemStack")
	child=get_child(0)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.pressed==false:
		pass
	if self.pressed==true:
		#var mouse_pos=get_viewport().get_mouse_position()
		var mouse_pos=get_local_mouse_position()
		child.position=mouse_pos
		#print(mouse_pos)
		pass


func _on_TextureButton_pressed():
	clicked=true
	#print("toogle"+str(self.pressed))
	pass # Replace with function body.

func _input(event):
	pass

	

func _on_TextureButton_mouse_entered():	
	print("mouse entered")
	is_Mouse_Entered=true

	pass # Replace with function body.


func _on_TextureButton_mouse_exited():
	is_Mouse_Entered=false
	pass # Replace with function body.
