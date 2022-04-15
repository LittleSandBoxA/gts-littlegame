extends BoneAttachment

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var size=Vector3(1,1,1)
var childInstance
# Called when the node enters the scene tree for the first time.
func _ready():	#var anim=root.get_node("AnimationPlayer")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func addChild():
	var child=load("res://rain.tscn")
	childInstance=child.instance()
	add_child(childInstance)
	var ske=get_parent()
	var mesh=ske.get_parent()
	var root=mesh.get_parent()
	var Realroot=root.get_parent()
	var miku=Realroot.get_node("AnimationPlayer")
	miku.play("up_and_eat")
	pass
func removeChild_And_Grow():
	#childInstance.queue_free()
	var miku=find_parent("miku")

	size.y+=1
	size.x+=1
	size.z+=1
	miku.set_scale(size)
	print(size)
	pass# Replace with function body.
