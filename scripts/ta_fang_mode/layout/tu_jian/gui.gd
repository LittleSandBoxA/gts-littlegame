extends TextureButton

var tip
var click_sound

func _ready():
	tip=get_parent().get_node("tip")
	click_sound=get_parent().get_node("sound/EnterSound")
	pass
	
func _on_gts_btn_pressed():
	tip.text="普通的女巨人，很常见,攻击力普通。"
	click_sound.play()
	pass


func _on_magic_btn_pressed():
	tip.text="女巨人法师，会施法给最近的gts,gts变大后血量、攻击力、防御力都会大幅提升"
	click_sound.play()
	pass
