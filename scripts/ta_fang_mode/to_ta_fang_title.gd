extends Button


var scene_name
var click_sound
#默认按钮是否被按下，默认为false
var clicked=false
#主界面名称
var title="ta_fang_title"
#塔库场景名称
var ta_ku="ta_ku"
#到达哪个场景
var to_what
var bgm
func _ready():
	click_sound=get_tree().current_scene.get_node("sound/EnterSound")
	scene_name=get_tree().current_scene.name
	#print_debug("当前界面"+str(scene_name))
	#重置按钮是否被按下
	if scene_name==ta_ku:
		clicked=false
	pass

func _process(delta):
	#回到游戏的总主界面
	if scene_name=="music" and click_sound.is_playing()==false and clicked==true:
		get_tree().change_scene(to_what)
	if scene_name=="store" and click_sound.is_playing()==false and clicked==true:
		get_tree().change_scene(to_what)
	if scene_name=="bian_dui" and click_sound.is_playing()==false and clicked==true:
		get_tree().change_scene(to_what)
	if scene_name=="ta_ku" and click_sound.is_playing()==false and clicked==true:
		get_tree().change_scene(to_what)
	if scene_name=="story" and click_sound.is_playing()==false and clicked==true:
		get_tree().change_scene(to_what)
	if scene_name==title and click_sound.is_playing()==false and clicked==true:
		get_tree().change_scene(to_what)
	#去往图片库
	if scene_name=="Android" and click_sound.is_playing()==false and clicked==true:
		get_tree().change_scene(to_what)
	#从图鉴到主界面	
	if scene_name=="tu_jian" and click_sound.is_playing()==false and clicked==true:
		get_tree().change_scene(to_what)
	if scene_name=="task" and click_sound.is_playing()==false and clicked==true:
		get_tree().change_scene(to_what)
	pass

#去往塔库
func _on_ta_ku_pressed():
	if scene_name=="ta_fang_title":
		click_sound.play()
		clicked=true
		to_what="res://scenes/ta_fang_mode/ta_ku.tscn"
		#get_tree().change_scene("res://scenes/塔防模式/塔防主界面.tscn")
	pass # Replace with function body.

#返回塔防主界面的按钮
func _on_to_title_pressed():
	if scene_name=="ta_ku" or scene_name=="store" or scene_name=="bian_dui" or scene_name=="story" or scene_name=="music":
		click_sound.play()
		clicked=true
		to_what="res://scenes/ta_fang_mode/ta_fang_title.tscn"
	pass # Replace with function body.

#到达仓库
func _on_store_pressed():
	if scene_name==title:
		click_sound.play()
		clicked=true
		to_what="res://scenes/ta_fang_mode/cang_ku.tscn"
	pass 
#开始玩塔防游戏
func _on_start_pressed():
	if scene_name==title:
		click_sound.play()
		clicked=true
		to_what="res://ready_scene/ta_fang_mode/level_selector.tscn"
	pass # Replace with function body.

#到主界面
func _on_to_game_title_pressed():
	if scene_name==title:
		click_sound.play()
		clicked=true
		to_what="res://test/Android_title.tscn"
	pass # Replace with function body.

#到编队
func _on_bian_dui_pressed():
	if scene_name==title:
		click_sound.play()
		clicked=true
		to_what="res://scenes/ta_fang_mode/bian_dui.tscn"
	pass # Replace with function body.

#去往图片库
func _on_image_pressed():
	if scene_name=="Android":
		click_sound.play()
		clicked=true
		to_what="res://ready_scene/background.tscn"
	pass # Replace with function body.
#回标题
func _on_back_pressed():
	if scene_name=="task":
		click_sound.play()
		clicked=true
		to_what="res://scenes/ta_fang_mode/ta_fang_title.tscn"
	if scene_name=="tu_jian":
		click_sound.play()
		clicked=true
		to_what="res://scenes/ta_fang_mode/ta_fang_title.tscn"
	pass # Replace with function body.

#到任务界面
func _on_task_pressed():
	click_sound.play()
	clicked=true
	to_what="res://scenes/ta_fang_mode/tu_jian/task.tscn"
	pass # Replace with function body.
