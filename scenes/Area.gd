extends Area

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mikuAI
var mikuAI_Action
var rain
var AI
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("root")
	AI=root.get_node("AI")
	mikuAI=root.get_node("AI/mikuAI")
	mikuAI_Action=root.get_node("AI/mikuAI/miku/AnimationPlayer")
	rain=root.get_node("rain")
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_Area_area_shape_entered(area_id, area, area_shape, self_shape):
	#print(area.name)
	"""var root=find_parent("root")
	var rain=get_parent()
	var anim=root.get_node("miku/miku/AnimationPlayer")
	anim.play("up_and_eat")
	var miku=root.get_node("miku/miku")
	var scale=miku.get_scale()
	print(scale)"""
	print(area.name)
	if area.name=="handArea":
		mikuAI_Action.play("up_and_eat")
	pass # Replace with function body.

#当碰撞时
func _on_Area_body_shape_entered(body_id, body, body_shape, area_shape):
	#print(str(body.name)+"和rain产生了碰撞")
	##计算AI应该移动的距离
	#var distance=abs(rain.pos.x-mikuAI.pos.x)
	"""if body.name=="mikuAI":#1.7全局AI手的Z坐标, 21全局rain x坐标
		#mikuAI.translate()
		mikuAI_Action.play("grab")"""
	pass # Replace with function body.


func _on_Area_area_entered(area):
	pass # Replace with function body.
