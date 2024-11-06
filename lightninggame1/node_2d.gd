extends Node2D

var between_obj_scene
var topBar
var bottomBar

func _ready() -> void:
	between_obj_scene = load("res://between_thing.tscn") as PackedScene
	topBar = get_node("/root/Main/Player/TopRigidBody")
	bottomBar = get_node("/root/Main/Player/BottomRigidBody")

func _on_between_obj_timer_timeout() -> void:
	var betweenInstance = between_obj_scene.instantiate()
	add_child(betweenInstance)
	
	betweenInstance.position.y = randf_range(20,700)
	betweenInstance.position.x = 1000
	
func _on_area_2d_body_entered(body: Node2D) -> void:
	print("colliding!")
	print(topBar.global_position.y)
	print(body.global_position.y)
	print(bottomBar.global_position.y)
	if (!(body.global_position.y < bottomBar.global_position.y and body.global_position.y > topBar.global_position.y)):
		get_node("/root/Main/Score").currentScore = 0
		
