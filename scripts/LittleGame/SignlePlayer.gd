extends Spatial

var World_Enviroment_Anim
onready var bag = $Bag
onready var Menu = $Menu
onready var MobileControl = $MobileControl
signal show_menu

func _ready():
	connect("show_menu",$Menu,"_show_menu")
	setup_android()
	pass

func setup_android():
	var os:String = OS.get_name()
	if os == "Windows":
		MobileControl.hide()
	elif os == "Android":
		MobileControl.show()

	pass
	
func _input(event):
	if Input.is_action_just_pressed("E"):
		bag.show()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		#print_debug("E")
	if event.is_action_pressed("backToMenu"):
		emit_signal("show_menu")
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_Menu_pressed():
	Menu.show()
	pass

func _on_DebugCollisionButton_toggled(button_pressed):
	get_tree().debug_collisions_hint = button_pressed
	pass
