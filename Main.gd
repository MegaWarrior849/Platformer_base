extends Node2D


func _on_HUD_start_game():
	$PlayerDemo.gravity = 2600
	$PlayerDemo.speed = 350
	$PlayerDemo.jump_speed = -1050
	$LightningThing.speed = 200


func _on_LightningThing_body_entered(body):
	if body == $PlayerDemo:
		get_tree().reload_current_scene()



"Add Escape_Looping for music"
"Steamtech Mayhem when ball is near character"


func _on_C1_body_entered(body):
	$LightningThing.speed += 100


func _on_C2_body_entered(body):
	$LightningThing.speed += 100


func _on_C3_body_entered(body):
	$LightningThing.speed += 100
