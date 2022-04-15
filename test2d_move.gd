extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var A
var B
var A2
var direction
var deg
var A_toB_rad
var A_toB_deg
#是否移动到下一个节点
var next=false
var B_toA_deg
var B_toA_rad
var B_deg
# Called when the node enters the scene tree for the first time.
func _ready():
	A2=$A2
	A=$A
	B=$B
	direction=A.position-B.position
	#print(direction)
	print("A"+str(A.position))
	print("B"+str(B.position))
	
	B_toA_rad=B.position.angle_to(A.position)
	B_toA_deg=rad2deg(B_toA_rad)
	print("B到A的弧度"+str(B_toA_rad))
	print("B到A的角度"+str(rad2deg(B_toA_rad)))
	
	A_toB_rad=A.position.angle_to(B.position)
	print("A到B的弧度"+str(A_toB_rad))
	print("A到B的角度"+str(rad2deg(A_toB_rad)))
	B.look_at(A.position)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if B.position.y>A.position.y:
		B.translate(direction*delta*0.5)
		print(B.position.y)
		print(A.position.y)
	if B.position.y<A.position.y:
		print("B的Y轴小于A的Y")
		next=true
	if B.position.x<A2.position.x and next==true:
		print("向第二个节点移动")
		B.translate(Vector2(1,0))
	
	
	pass
