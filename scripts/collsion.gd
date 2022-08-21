extends Area

func _ready():
	pass 
	


func _on_Area_area_entered(area):
	#self.remove()
	print("手进入")
	var root=find_parent("root")
	var miku=root.get_node("player/miku")
	var hand=miku.get_node("初音ミク/初音ミク_arm/Skeleton/hand")
	#添加小人到手部
	hand.addChild()
	
	pass
