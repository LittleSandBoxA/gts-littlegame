extends Area

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var gameOver
var miku
var win
var sound_catched
# Called when the node enters the scene tree for the first time.
func _ready():
	var root=find_parent("root")
	win=root.get_node("win")
	miku=root.get_node("KinematicBody/miku")
	gameOver=root.get_node("Game_over_root")
	sound_catched=root.get_node("Game_over_root/sound/catched")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_miku_area_entered(area):
#	if area.name=="AI":
#		var AI=area.get_parent()
#		print("AI"+str(AI.get_scale()))
#		print("miku"+str(miku.get_scale()))
#		AI.anim.play("grabB")
#		if AI.get_scale().y>miku.get_scale().y:
#			print("AI比miku大")
#			sound_catched.play()
#			gameOver.show()
#			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
#		elif AI.get_scale().y<miku.get_scale().y:
#			print("miku比AI大")
#			win.show()
#			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	pass # Replace with function body.
