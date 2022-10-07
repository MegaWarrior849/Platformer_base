extends Node2D


func _on_HUD_start_game():
	$PlayerDemo.gravity = 2600
	$PlayerDemo.speed = 350
	$PlayerDemo.jump_speed = -1050
