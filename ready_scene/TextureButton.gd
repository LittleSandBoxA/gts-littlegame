extends TextureButton


var pos=Vector2(30,30)
var child
var click = false
var fllow_sprite
var has_item_fllowed = false
var ItemStack #另外一个场景的物品栏

func _ready():
#	ItemStack=get_tree().get_nodes_in_group("ItemStack")
#	print(ItemStack)
#	var root=get_parent()
#	fllow_sprite=root.get_node("Sprite")
#	print(fllow_sprite)
#	#pos=root.get_node("Position2D").position
#	child=get_parent().get_child(1)
#	print(child)
	pass 

func _process(delta):
#	if self.pressed:
#		click=true
#	else:
#		click=false
#	if click==true:
#		child.position=get_local_mouse_position()
#		has_item_fllowed=true
#	if click==true and Input.is_action_just_pressed("mouseRight"):
#		self.pressed=false
#		child.position=pos
#		has_item_fllowed=false
#	if click==false:
#		child.position=pos
		#get_tree().current_scene.get_node()
	pass

func _on_TextureButton_pressed():
	#print(self.pressed)
	pass
