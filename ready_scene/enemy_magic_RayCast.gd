extends RayCast

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var scene
var root
var anim
var rain
# Called when the node enters the scene tree for the first time.
func _ready():
	scene=get_tree().current_scene
	if scene.name=="level2":
		#root==find_parent("magic")
		
		pass#anim=root.get_node("AnimationPlayer")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(is_colliding())
	#print(get_collider_shape())
	#anim.play("magic_attack")
	pass
