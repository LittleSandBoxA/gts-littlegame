extends Sprite

var index = 0
var currentSlot 
signal show_tool_name
func _ready():
	connect("show_tool_name",get_parent(),"_show_tool_name")
func _input(event):
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
		if index > 0:
			index -= 1
			currentSlot = $"../SlotContainer".get_child(index)
			emit_signal("show_tool_name",currentSlot.itemName)
		self.translate(Vector2(-64,0))
		if self.position.x < 32:
			self.position.x = 32
		pass
		
	if event.is_action_pressed("mouse_middle_down"):
		if index < 8:
			index += 1
			currentSlot = $"../SlotContainer".get_child(index)
			emit_signal("show_tool_name",currentSlot.itemName)
		self.translate(Vector2(64,0))
		if self.position.x > 64*9:
			self.position.x = 64*9
		pass
	pass
