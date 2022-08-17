extends StaticBody


var can_input=false
var place_display
var display_pos
var cam

func _ready():
	var scene=get_tree().current_scene.name
#	cam=get_tree().current_scene.get_node("Camera")
#	if scene=="ta_fang_test":
#		place_display=get_tree().current_scene.get_node("ta_fang_place")
	pass # Replace with function body.

func _process(delta):
	pass
	
func _on_StaticBody_input_event(camera, event, click_position, click_normal, shape_idx):
#	if can_input==true:
#		display_pos=click_position
#		place_display.translation=click_position
	#print(click_position)
	pass # Replace with function body.
