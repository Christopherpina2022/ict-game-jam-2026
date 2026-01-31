extends Parallax2D

@onready var background = $background
@onready var character = $character

@export var sensitivity = 8
@export var dampening = 5.0

func _process(delta: float) -> void:
	# move parallax value based on mouse position
	var viewportSize = get_viewport_rect().size
	var mousePos = get_viewport().get_mouse_position()
	
	var normalized = ((mousePos / viewportSize) - Vector2(0.5, 0.5)) * sensitivity
	
	# calculate target positions for parallax
	var bg_target = normalized * sensitivity * 0.1
	var char_target = normalized * sensitivity * 0.7
	background.position = background.position.lerp(bg_target, dampening * delta)
	character.position = character.position.lerp(char_target, dampening * delta)
