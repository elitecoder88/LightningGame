extends Label

var maxScore
var currentScore
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	maxScore = 0
	currentScore = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	text = "Current Score: " + str(currentScore) + " / Max Score: " + str(maxScore)
	_score_setter()

func _on_score_timer_timeout() -> void:
	currentScore = currentScore + 1
	
func _score_setter() -> void:
	if(currentScore > maxScore):
		maxScore = currentScore
