extends CanvasLayer

signal start_game

func show_message(text):
	$VBoxContainer/Message.text = text
	$VBoxContainer/Message.show()

func _on_StartButton_pressed():
	$VBoxContainer/Message.hide()
	$VBoxContainer/StartButton.hide()
	emit_signal("start_game")
	
