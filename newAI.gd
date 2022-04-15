extends Spatial

var root
#AI的位置
var catch_player_mode=false
#是否捉到小人
var next=false
var Catched_tiny
var pos
var anim
var tinys
var tinyAreas
var tiny_vector=Array()
var tinys_pos_to_Gts=Array()
var Allow_next
var player
var catch_index=0
#到达第一个小人的位置
var first_pos
var second_pos
var third_pos
var fourth_pos
var fifth_pos
var sixth_pos
var seventh_pos
var eighth_pos
var nineth_pos
var distance_to_tiny=0
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("root")
	pos=self.translation
	#-------------获得小人节点数组
	tinys=get_tree().get_nodes_in_group("tinys")
	anim=get_node("AnimationPlayer")
	player=root.get_node("KinematicBody")
	Allow_next=anim.next
	tinyAreas=get_tree().get_nodes_in_group("tinyArea")
	#print(tinyAreas)
	Catched_tiny=tinys[0].get_node("tiny")
	
	
	first_pos=tinys[0].translation-self.translation
	
	#print(first_pos)
	
	#self.translate(second_pos)
	
	#print(tinys)
	pass # Replace with function body.

func _process(delta):
	second_pos=tinys[1].translation-self.translation
	third_pos=tinys[2].translation-self.translation
	fourth_pos=tinys[3].translation-self.translation
	fifth_pos=tinys[4].translation-self.translation
	sixth_pos=tinys[5].translation-self.translation
	seventh_pos=tinys[6].translation-self.translation
	eighth_pos=tinys[7].translation-self.translation
	nineth_pos=tinys[8].translation-self.translation
	if self.translation.z<tinys[0].translation.z and tinyAreas[0].is_catched_by_gts==false:
		self.translate(first_pos*delta*0.25)
	else:
		if self.translation.z>tinys[1].translation.z and tinyAreas[1].is_catched_by_gts==false:
			self.translate(second_pos*delta*0.25)
		else:
			if self.translation.z<tinys[2].translation.z and tinyAreas[2].is_catched_by_gts==false:
				self.translate(third_pos*delta*0.25)
			else:
				if self.translation.z>tinys[3].translation.z and tinyAreas[3].is_catched_by_gts==false:
					self.translate(fourth_pos*delta*0.25)
				else:
					if self.translation.z>tinys[4].translation.z and tinyAreas[4].is_catched_by_gts==false:
						self.translate(fifth_pos*delta*0.25)
					else:
						if self.translation.z>tinys[5].translation.z and tinyAreas[5].is_catched_by_gts==false:
							self.translate(sixth_pos*delta*0.25)
						else:
							if self.translation.z>tinys[6].translation.z and tinyAreas[6].is_catched_by_gts==false:
								self.translate(seventh_pos*delta*0.25)
							else:
								if self.translation.z>tinys[7].translation.z and tinyAreas[7].is_catched_by_gts==false:
									self.translate(eighth_pos*delta*0.25)
								else:
									if self.translation.z>tinys[8].translation.z and tinyAreas[8].is_catched_by_gts==false:
										self.translate(nineth_pos*delta*0.25)
									else:
										catch_player_mode=true
										if catch_player_mode==true and self.translation.distance_to(player.translation)<10:
											self.translate((player.translation-self.translation)*delta*0.15)
											#print("AI要来了！")
func Vector_to_gts(delta):
	if self.translation.z<tinys[0].translation.z and Catched_tiny.is_catched_by_gts==false:
		anim.play("walkB")
		translate(first_pos*delta*0.15)
	if anim.next==true and self.translation.z>tinys[1].translation.z:
		print("15156next")
		translate(second_pos*delta*0.15)
		print(second_pos)
	"""else:
		if self.translation.z<player.translation.z:
			self.translate((player.translation-self.translation)*delta)
			print("catch miku?")"""
	pass