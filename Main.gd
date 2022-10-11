extends Node2D


func _on_HUD_start_game():
	$PlayerDemo.gravity = 2600
	$PlayerDemo.speed = 350
	$PlayerDemo.jump_speed = -1050
	$LightningThing.speed = 500


func _on_LightningThing_body_entered(body):
	if body == $PlayerDemo:
		get_tree().reload_current_scene()
