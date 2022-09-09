extends Node2D



func _on_Area2D2_body_entered(body):
	get_tree().reload_current_scene()
