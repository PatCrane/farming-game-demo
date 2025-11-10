extends CharacterBody2D

var direction: Vector2
var speed := 300

func _physics_process(delta: float) -> void:
	get_input()
	velocity = direction * speed
	move_and_slide()
	animation()
	
func get_input():
	direction = Input.get_vector("left", "right", "up", "down")

func animation():
	if direction:
		var target_vector: Vector2 = Vector2(round(direction.x), round(direction.y))
		$AnimationTree.set("parameters/MoveStateMachine/idle/blend_position", target_vector)	
	
