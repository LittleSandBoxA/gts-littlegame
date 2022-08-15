extends Button
#scene:AI_test
#手机gui触摸AI场景
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var miku
var anim
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
#	var root=get_parent()
#	miku=root.get_node("KinematicBody")
#	anim=root.get_node("KinematicBody/miku/AnimationPlayer")
#	pass # Replace with function body.
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	if self.pressed:
#		#print(self.name)
#		if self.name=="up":
#			miku.translate(Vector3(0,0,2*delta))
#			anim.play("walk")
#		if self.name=="down":
#			miku.translate(Vector3(0,0,-2*delta))
#		if self.name=="left":
#			miku.rotate_y(1*delta)
#		if self.name=="right":
#			miku.rotate_y(-1*delta)
#	pass
#func _on_back_to_android_pressed():
#	get_tree().change_scene("res://test/Node2D.tscn")
#	pass # Replace with function body.
