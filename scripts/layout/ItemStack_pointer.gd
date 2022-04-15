extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var sound_pointer
var pointer_index=0
var Items#物品的节点组
var SelectItem
var pointer_pos
var ray
# Called when the node enters the scene tree for the first time.
func _ready():
	pointer_pos=get_tree().get_nodes_in_group("pointer_pos")
	root=find_parent("item_stack_root")
	sound_pointer=root.get_node("sound/pointer")
	Items=get_tree().get_nodes_in_group("ItemStack")
	print(len(pointer_pos))
	"""var i=0
	for i in len(Items):
		print(Items[i].name)"""
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#pan_duan_Item()

	"""if self.position.x<302:
		pointer_index=1
		SelectItem=Items[0].name
		#pan_duan_Item()
		#print("选择了第一个物品栏")
	if self.position.x==302:
		pointer_index=2
		SelectItem=Items[1].name
		print(SelectItem)
		#pan_duan_Item()
#		print("选择了第二个物品栏")
	if self.position.x==352:
		pointer_index=3
		SelectItem=Items[2].name
		#pan_duan_Item()
		#print("选择了第三个物品栏")
	if self.position.x==402:
		pointer_index=4
		SelectItem=Items[3].name
		#pan_duan_Item()
		#print("选择了第四个物品栏")
	if self.position.x==452:
		pointer_index=5
		SelectItem=Items[4].name
		#pan_duan_Item()
		#print("选择了第五个物品栏")
	if self.position.x==502:
		pointer_index=6
		SelectItem=Items[5].name
		#pan_duan_Item()
		#print("选择了第六个物品栏")
	if self.position.x==552:
		pointer_index=7
		SelectItem=Items[6].name
		#pan_duan_Item()
		#print("选择了第七个物品栏")
	if self.position.x==602:
		pointer_index=8
		SelectItem=Items[7].name
		#pan_duan_Item()
		#print("选择了第八个物品栏")
	if self.position.x==652:
		pointer_index=9
		SelectItem=Items[8].name
		#pan_duan_Item()
		#print("选择了第九个物品栏")"""
	pass
func pan_duan_Item():
	#print(get_tree().current_scene.name)
	if get_tree().current_scene.name=="test_creating":
		if pointer_index==1:
			#print(Items[0].name)
			if Items[0].name=="big":
				ray=get_tree().current_scene.get_node("Camera/RayCast")
				ray.allow_add_block=false
		else:
			ray.allow_add_block=true
	pass
func _input(event):
	#----------------物品栏选择
	"""if event.is_action_pressed("item_stack1"):
		pointer_index=1
		print(pointer_index)
	if event.is_action_pressed("item_stack2"):
		pointer_index=2
		print(pointer_index)
	if event.is_action_pressed("item_stack3"):
		pointer_index=3
		print(pointer_index)
	if event.is_action_pressed("item_stack4"):
		pointer_index=4
		print(pointer_index)
	if event.is_action_pressed("item_stack5"):
		pointer_index=5
		print(pointer_index)
	if event.is_action_pressed("item_stack6"):
		pointer_index=6
		print(pointer_index)
	if event.is_action_pressed("item_stack7"):
		pointer_index=7
		print(pointer_index)
	if event.is_action_pressed("item_stack8"):
		pointer_index=8
		print(pointer_index)
	if event.is_action_pressed("item_stack9"):
		pointer_index=9
		print(pointer_index)"""
	#--------------------------------------
	if event.is_action_pressed("mouse_middle_up"):
		if pointer_index>0:
			pointer_index-=1
			self.position=pointer_pos[pointer_index].position
		print("指针位置"+str(pointer_index))
		sound_pointer.play()
	if event.is_action_pressed("mouse_middle_down"):
		sound_pointer.play()
		if pointer_index<8:
			pointer_index+=1
			self.position=pointer_pos[pointer_index].position
		print("指针位置"+str(pointer_index))
	pass