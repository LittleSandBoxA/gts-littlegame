extends StaticBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var scene
#显示塔
var display
var choosed=false
var enter=false
var self_pos
var tower_btn
#删除按钮
var del_btn
#是否可移动塔display
var place_root
#放置方块的儿子
var child_count
var root
var cost
var now_cost_node
func _ready():
	scene=get_tree().current_scene.name
	if scene=="coin_level":
		root=find_parent("coin_level")
		display=get_tree().current_scene.get_node("tower_static")
		child_count=get_child_count()
		print_debug(child_count)
	if scene=="level2":
		root=find_parent("level2")
		place_root=get_parent()

		#tower_btn=root.get_node("tower_btn")
		display=get_tree().current_scene.get_node("tower_static")
		self_pos=self.translation
		child_count=get_child_count()
	pass 


func _process(delta): 
	child_count=get_child_count()
	now_cost_node=root.get_node("costTimer")
	cost=root.get_node("costTimer").real_cost
	#print("childs:"+""+str(child_count))
	pass # Replace with function body.


func _on_tower_place_root_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouse:
		display.translation=self.translation
	if event is InputEventMouseButton:
		if event.pressed:
			print("按下了")
			var real_tower=load("res://ready_scene/attack_tower.tscn").instance()
			var place_sound=real_tower.get_node("StaticBody/del_btn/place")
			if scene=="level2":
				real_tower.rotation_degrees.y+=180
			if scene=="coin_level":
				real_tower.rotation_degrees.y+=90
			#检查是否存在realtower
			if child_count<3 and cost>9:
				add_child(real_tower)
				place_sound.play()
				cost-=10
				now_cost_node.real_cost-=10
	pass # Replace with function body.


func _on_tower_place_root_mouse_exited():
	display.translation=Vector3(0,10,0)
	pass # Replace with function body.
