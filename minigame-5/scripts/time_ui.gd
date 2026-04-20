extends VBoxContainer

@onready var text = get_node("TimeText")
@onready var conesText = get_node("ConesText")

var time: float = 0.0
var cones: int = 0

func _process(delta: float) -> void:
	time += delta
	text.text = "time: %.2f" % time

func _increaseConeHitCount() -> void:
	cones += 1
	conesText.text = "cones: %.0f" % cones
