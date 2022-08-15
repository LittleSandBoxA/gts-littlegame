extends Area

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var life=5
var life_node
var life_index=0
var lost_node
var hit_sound
# Called when the node enters the scene tree for the first time.
func _ready():
	var scene=get_tree().current_scene.name
	if scene=="level2":
		root=find_parent("level2")
		life_node=get_tree().get_nodes_in_group("life")
		lost_node=root.get_node("lost")
		hit_sound=$hit
	pass 


func _process(delta):
	#print_debug((""+life_index)
	if life==0:
		lost_node.show()
		root.my_pressed=true
	pass


func _on_fall_out_area_entered(area):
	if area.name=="walk" or area.name=="magic":
		root.dies+=1
		#print("掉出+1")
		hit_sound.play()
		
		if life_index<5:
			life-=1
			life_node[life_index].queue_free()
			life_index+=1
		area.get_parent().get_parent().queue_free()
	pass
