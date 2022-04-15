extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var root
var born_point
var gts
var bo_shu_now=1
var bo_shu_now_display
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("ta_fang_test")
	var born_gts_point=root.get_node("born_gts_point")
	born_point=born_gts_point.translation
	bo_shu_now_display=root.get_node("bo_shu_now")
	#print(born_point)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_Timer_timeout():
	#print("时间到")
	bo_shu_now+=1
	if bo_shu_now==20:
		stop()
	var gts_mesh
	gts=load("res://walk.tscn").instance()
	root.add_child(gts)
	bo_shu_now_display.text=str(bo_shu_now)
	gts.translation=born_point
	gts.rotation_degrees.y+=180
	#gts_mesh=gts.get_node("RigidBody/亞北ネル/亞北ネル_arm/Skeleton")
	#gts_mesh.set_scale(Vector3(2,2,2))
	#gts.translate(Vector3(0,0,1))
	#print("添加了新的gts")
	var anim=gts.get_node("AnimationPlayer")
	anim.play("walk")
	pass # Replace with function body.
