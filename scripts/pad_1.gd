extends CharacterBody2D

var speed = 500

func get_input():
	## its probably not good practice to have strings that are empty
	## since it gives an error in console. but idk how to make the
	## player not able to go l/r other wise
	var inputDir = Input.get_vector("", "", "pad1Up", "pad1Down")
	velocity = inputDir * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
