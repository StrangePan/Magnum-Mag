extends Node


@export var lanes: Array[Node]

var laneIndex: int


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	laneIndex = (lanes.size() + 1) / 2

func setLane(index: int) -> void:
	laneIndex = clamp(index, 0, lanes.size() - 1)
	self.position.x = lanes[laneIndex].position.x

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if (Input.is_action_just_pressed("move_left")):
		setLane(laneIndex - 1)
		print("Move left")
	if (Input.is_action_just_pressed("move_right")):
		setLane(laneIndex + 1)
		print("Move right")
