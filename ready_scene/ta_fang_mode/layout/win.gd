extends Node2D

var anim
var win_sound
var coin_display
var coin
var coin_root

func _ready():
	anim = $AnimationPlayer
	win_sound = $sound/win
	coin_display = $coin2/Label.text
	coin = int(coin_display)
	coin_root = $coin2
	pass
	
func _on_win_visibility_changed():
	if self.visible:
		coin_root.save_coin(coin+100)
		win_sound.play()
		anim.play("win")
	pass
