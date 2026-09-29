#tutorial https://www.youtube.com/watch?v=AHno-nd2F_I

extends CharacterBody2D

const initSpeed: int = 500
var speed: int = initSpeed
var direction: Vector2

func _ready() -> void:
	direction = get_random_direction()

#func _process(delta: float) -> void:
	#if position.y <= -550:
		#position.y = 540
	#if position.y >= 550:
		#position.y = -540

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(direction * speed * delta)
	if collision:
		direction = direction.bounce(collision.get_normal())

func get_random_direction() -> Vector2:
	var newDir = Vector2()
	newDir.x = [1, -1].pick_random()
	newDir.y = randf_range(-1, 1)
	return newDir.normalized()
