extends Area2D

func _on_C1_body_entered(body):
	if body.name == "PlayerDemo":
		queue_free()
