extends StaticBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var enter=false
var cancel_sound
var click=false
var place_root
var root
var tower_Display
var attack_tower_root
#碰撞次数
var attack_coll_times=0
# Called when the node enters the scene tree for the first time.
func _ready():
	cancel_sound=$cancel
	
	var scene=get_tree().current_scene.name
	if scene=="coin_level":
		attack_tower_root=get_parent().get_parent()
	if scene=="attack_tower_root":
		attack_tower_root=get_parent().get_parent()
	if scene=="level2":
		attack_tower_root=get_parent().get_parent()
		#print(attack_tower_root)
		root=find_parent("level2")
		#tower_Display=root.get_node("tower_display")
		#place_root=get_tree().current_scene.get_node("place")
		#print(attack_tower_root)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if cancel_sound.is_playing()==false and click==true:
		attack_tower_root.queue_free()
	pass
func _on_del_btn_mouse_exited():
	enter=false
	pass # Replace with function body.


func _on_del_btn_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouse:
		if event.is_pressed()==true:
			click=true
			print_debug("x")
			print_debug(attack_tower_root)
			cancel_sound.play()
	pass # Replace with function body.
