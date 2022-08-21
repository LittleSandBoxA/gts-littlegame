extends RayCast

signal move
var AI
var kine 
var x=4

func _ready():
	AI=find_parent("AI")
	kine=find_parent("mikuAI")
	
	pass
func a():
	print("sdasdasda")
	pass

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
	pass
