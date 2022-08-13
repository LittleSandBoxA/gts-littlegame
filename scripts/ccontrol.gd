extends Spatial


var Game_Over
var World_Enviroment_Anim
var bag
# Called when the node enters the scene tree for the first time.
func _ready():
	bag=$bag_root
	Game_Over=$Game_over_root
	#World_Enviroment_Anim=$EnviromentAnim
	#World_Enviroment_Anim.play("day to night")
	pass # Replace with function body.

#func _process(delta):
#	pass
func _input(event):
	if Input.is_action_just_pressed("E"):
		bag.show()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		print("E")
	if event.is_action_pressed("backToMenu"):
		Game_Over.show()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
