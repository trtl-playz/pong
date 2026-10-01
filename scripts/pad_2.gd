extends CharacterBody2D

@export var target: Node2D

var speed: int = 500
var ballPos

func _process(delta: float) -> void:
	ballPos = target.position.y
	
	position.y = ballPos # * delta
