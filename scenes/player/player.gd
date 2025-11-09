extends CharacterBody2D

var direction: Vector2
var speed := 300

func _physics_process(delta: float) -> void:
	get_input()
	velocity = direction * speed
	move_and_slide()
	
func get_input():
	direction = Input.get_vector("left", "right", "up", "down")
	
	
