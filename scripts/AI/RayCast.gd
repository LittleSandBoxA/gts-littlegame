extends RayCast

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal move
var AI
var kine 
var x=4
# Called when the node enters the scene tree for the first time.
func _ready():
	AI=find_parent("AI")
	kine=find_parent("mikuAI")
	
	pass # Replace with function body.
func a():
	print("sdasdasda")
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_colliding():
		if get_collider().name=="rain":
			#kine.grab()
			#print("454")
			pass
	pass
func _notification(what):
	#print("通知")
	#print(what)
	pass
func _on_RayCast_move():
	pass # Replace with function body.
