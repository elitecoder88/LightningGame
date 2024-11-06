extends Node2D

var speed
var direction
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	speed = 350

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	direction = Vector2.ZERO
	# Custom input actions
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	elif Input.is_action_pressed("ui_down"):
		direction.y += 1
	# Applying delta for smooth movement
	position += direction * speed * delta
