extends Spatial

var use_piano = false
onready var tuneC4 = $sound/piano_1
onready var tuneD4 = $sound/piano_2
onready var tuneE4 = $sound/piano_3
onready var tuneF4 = $sound/piano_4
onready var tuneG4 = $sound/piano_5
onready var tuneA4 = $sound/piano_6
onready var tuneB4 = $sound/piano_7
onready var tuneC5 = $sound/piano_8

func _on_Area_body_entered(body):
	if body.name == "Player":
		tuneC4.play()
		use_piano = true
	pass

func _on_Area_body_exited(body):
	if body.name == "Player":
		use_piano = false
	pass

func _unhandled_input(event):
	if use_piano:
		if event is InputEventKey:
			if event.echo == false and event.pressed:
				match event.scancode:
					KEY_1:
						tuneC4.play()
					KEY_2:
						tuneD4.play()
					KEY_3:
						tuneE4.play()
					KEY_4:
						tuneF4.play()
					KEY_5:
						tuneG4.play()
					KEY_6:
						tuneA4.play()
					KEY_7:
						tuneB4.play()
					KEY_8:
						tuneC5.play()
#				print_debug("echo",event.echo)
#				print_debug("pressed",event.pressed)
	pass
