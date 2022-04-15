extends LineEdit

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var tips
var root
# Called when the node enters the scene tree for the first time.
func _ready():
	root=get_parent()
	tips=root.get_node("tips")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_LineEdit_text_changed(new_text):
	print(new_text)
	if new_text=="/":
		tips.text="/time set [day,night,second(s)]"
		tips.show()
		
	pass # Replace with function body.


func _on_LineEdit_text_entered(new_text):
	if new_text=="/time set day":
		tips.text="把时间设置成白天"
		tips.show()
	if new_text=="/":
		tips.text="指令不合法"
		tips.show()
	if new_text=="/time set night":
		tips.text="把时间设置成晚上"
		tips.show()
	if new_text=="/set scale":
		tips.text="设置自身大小！"
		tips.show()
	if new_text=="/op":
		tips.text="/op [用户名]来设置管理员"
		tips.show()
	if new_text=="/deop":
		tips.text="/deop [用户名]来取消管理员"
		tips.show()
	pass # Replace with function body.
