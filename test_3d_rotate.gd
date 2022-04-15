extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var deg
var miku
var AI
var distance
var anim
var size=Vector3(1,1,1)
var times=0
# Called when the node enters the scene tree for the first time.
func _ready():
	anim=$miku/AnimationPlayer
	miku=$miku
	AI=$newAI
	deg=AI.translation.direction_to(miku.translation)
	print(deg)
	distance=AI.translation.distance_to(miku.translation)
	print("方向"+str(deg))
	pass # Replace with function body.
	var angle=deg.angle_to(miku.translation)
	#miku.rotate_y(-deg.x)
	#print(angle)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	miku.rotate_y(deg.z*delta)
	"""if miku.rotation.y>deg.z:
		miku.rotate_y(deg.z)
		print("rotation.y <deg.z")"""
	"""if miku.rotation.y<deg.z:
		print("rotation y<deg.z")
		miku.rotate_y(-deg.x)
		return"""
		
	"""if miku.translation.z<AI.translation.z:
		miku.translate(Vector3(0,0,1*delta))
		print(miku.translation)"""
	"""if miku.translation.z>=AI.translation.z:
		if times<2:
			anim.play("grab")
			size.x+=0.1
			size.y+=0.1
			size.z+=0.1
			miku.set_scale(size)
			print("z轴位置 >")
			times+=1
			print(times)"""
	#print("deg"+str(miku.rotation_degrees.y))
	#miku.translate(Vector3(0,0,distance*delta))
	#print("主循环")
	pass
