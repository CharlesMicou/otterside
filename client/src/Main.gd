extends Node2D

func _ready():
	$Otter1.apply_impulse(Vector2(0.0, 0.0), Vector2(50.0, 30.0))
	$Otter2.apply_impulse(Vector2(0.0, 0.0), Vector2(-20.0, 70.0))

func _process(delta):
	pass
