#tutorial

extends CharacterBody2D

var speed: int = 500
var ballPos
@export var target: Node2D

func _process(delta: float) -> void:
	ballPos = target.position.y
	
	position.y = ballPos # * delta
