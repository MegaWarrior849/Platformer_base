extends KinematicBody2D

export (int) var speed = 0
export (int) var jump_speed = 0
export (int) var gravity = 0

export (float, 0, 1.0) var friction = 6
export (float, 0, 1.0) var acceleration = 6
var velocity = Vector2.ZERO

func get_input(delta):
	var dir = 0
	if Input.is_action_pressed("ui_right"):
		dir += 1
		$Sprite.flip_h = true
		if Input.is_action_pressed("run"):
			dir += 1
	if Input.is_action_pressed("ui_left"):
		dir -= 1
		$Sprite.flip_h = false
		if Input.is_action_pressed("run"):
			dir -= 1
	if dir != 0:
		velocity.x = lerp(velocity.x, dir * speed, acceleration * delta)
	else:
		velocity.x = lerp(velocity.x, 0, friction * delta)
	

func _physics_process(delta):
	get_input(delta)
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y = jump_speed
	if position.y > 1000:
		get_tree().reload_current_scene()
