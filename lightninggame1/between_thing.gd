extends RigidBody2D

var speed

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	speed = 125
	linear_velocity = Vector2 (-speed, 0)
	#
#func _process(_delta) -> void:
	#linear_velocity = Vector2 (-speed, 0)

	
