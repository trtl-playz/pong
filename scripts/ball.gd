##tutorial: https://www.youtube.com/watch?v=H5lDDUAnrrY

extends CharacterBody2D

#var speed: float = 0
var ranX: float = 300
var ranY: float = 0

func _ready() -> void:
	#ranX = randf_range(ranX, -ranX) #get random dir to fling ball
	#ranX = randf_range(ranY, -ranY)
	print(ranX)
	print(ranY)
	
	velocity = Vector2(ranX, ranY) * 2

func _physics_process(delta: float) -> void:
	move_and_collide(velocity * delta)
	
	if position.y >= 560:
		position.y = -556
		print("ball left bottom")
	elif position.y <= -560:
		position.y = 556
		print("ball left top")
