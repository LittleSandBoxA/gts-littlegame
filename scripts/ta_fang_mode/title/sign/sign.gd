extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var open_gift_anim
var sound_Click
# Called when the node enters the scene tree for the first time.
func _ready():
	open_gift_anim=get_parent().get_node("AnimationPlayer")
	sound_Click=get_parent().get_node("sound/EnterSound")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_sign_pressed():
	open_gift_anim.play("open_gift")
	sound_Click.play()
	pass # Replace with function body.
