extends Node2D

@export var ballObj: Node2D

func _process(delta: float) -> void:
	if(ballObj.position.x <= 10):
		print("somthing")
