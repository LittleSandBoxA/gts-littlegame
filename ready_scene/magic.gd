extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var scene
var gts_rains
#gts索引
var index=1
var attack_anim
var gts_group_length
var real_length
# Called when the node enters the scene tree for the first time.
func _ready():
	scene=get_tree().current_scene
	if scene.name=="level2":
		#gts节点组
		gts_rains=get_tree().get_nodes_in_group("gts")
		print_debug(gts_rains)
		gts_group_length=len(gts_rains)
		attack_anim=$AnimationPlayer
		
		print_debug("当术士添加时，gts组的长度"+str(len(get_tree().get_nodes_in_group("gts"))))
		print_debug("gts组"+str(get_tree().get_nodes_in_group("gts")[0].name))
		pass
	pass # Replace with function body.
func _physics_process(delta):
	translate(Vector3(0,0,0.8*delta))
	pass
func add_ball():
	var ball=load("res://ready_scene/enemy_attack_ball.tscn").instance()
	add_child(ball)
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	gts_rains=get_tree().get_nodes_in_group("gts")
#	gts_group_length=len(gts_rains)
#	if gts_group_length>1:
#		print_debug("有rain的gts存在")
#		print_debug("数组长度"+str(gts_group_length))
#		#减去自带的node
#		#get_class().get_base_dir()
#		real_length=len(gts_rains)-1
#		for index in range(1,gts_group_length):
#			#print_debug("index"+str(index))
#			var gts=gts_rains[index].get_node("RigidBody/亞北ネル/亞北ネル_arm/Skeleton")
#			var distance=self.translation.distance_to(gts.translation)
#			print_debug("距离："+str(distance))
#			if distance<30:
#				attack_anim.play("magic_attack")
#				#gts.life_up(7)
#				#print_debug("gts的生命提升到7")
#				if gts.scale.x<2:
#					gts.scale.x+=0.05
#					gts.scale.y+=0.05
#					gts.scale.z+=0.05
	pass
