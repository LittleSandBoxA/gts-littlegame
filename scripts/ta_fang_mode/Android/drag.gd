extends TextureButton

# Declare member variables here. Examples:
# var a = 2
var sha_mo
var mouse_pos
#root
#是否松开按钮
var released=false
var root
var place_display
var place_sound
# Called when the node enters the scene tree for the first time.
func _ready():
	root=find_parent("ta_fang_test")
	place_sound=root.get_node("sound/place_2")
	place_display=root.get_node("ta_fang_place")
	sha_mo=root.get_node("sand_root/StaticBody")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	mouse_pos=get_viewport().get_mouse_position()
	if self.pressed==true:
		self.rect_global_position=mouse_pos
	pass
#放置塔
func add_tower():
	var tower=load("res://ready_scene/attack_tower.tscn").instance()
	root.add_child(tower)
	tower.translation=root.place_tower_display
	place_sound.play()
	queue_free()
	pass

func _on_attack_drag_button_up():
	add_tower()
	pass 
