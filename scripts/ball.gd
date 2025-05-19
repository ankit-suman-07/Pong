extends CharacterBody2D

const SPEED := 10

func _ready() -> void:
	velocity = Vector2(-SPEED, 0)
	
func _physics_process(delta: float) -> void:
	var coll :KinematicCollision2D= move_and_collide(velocity)
	if coll:
		var normal := coll.get_normal()
		velocity = velocity.bounce(normal)
