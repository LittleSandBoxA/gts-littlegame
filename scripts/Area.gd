extends Area

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var is_catched_by_gts=false
var player
var anim
var tiny
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("root")
	player=root.get_node("KinematicBody/miku")
	anim=player.get_node("AnimationPlayer")
	tiny=get_parent()
	is_catched_by_gts=false
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_area_entered(area):
	print("小人与"+str(area.name)+"发生碰撞")
	if area.name=="AI":
		var AI=area.get_parent()
		AI.anim.play("grabB")
		#print("AI大小"+str(AI.get_scale()))
		is_catched_by_gts=true
		#tiny.queue_free()
		pass
	print(area.name)
	if area.name=="handArea":
		anim.play("up_and_eat")
		is_catched_by_gts=true
		#tiny.queue_free()
		
		
	pass # Replace with function body.
