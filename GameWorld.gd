extends Node2D
class_name GameWorld

# Procedurally generates a tile-based map with a border.
# Right click or press enter to re-generate the map.

# warning-ignore:unused_signal
signal started
# warning-ignore:unused_signal
signal finished

enum Cell {OBSTACLE, GROUND, OUTER}

export var inner_size : = Vector2(10, 8)
export var perimeter_size : = Vector2(1, 1)
export (float, 0, 1) var ground_probability : = 0.1

# Public variables
var size := inner_size + 2 * perimeter_size

# Private variables
onready var _tile_map : TileMap = $TileMap
var _rng := RandomNumberGenerator.new()

func _ready() -> void:
	setup()

func setup() -> void:
	# Sets the game window size to twice the resolution of the world.
	var map_size_px := size * _tile_map.cell_size
	get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_2D, SceneTree.STRETCH_ASPECT_KEEP, map_size_px)
	OS.set_window_size(2* map_size_px)
	


func generate() -> void:
	# Although there's no other nodes to use these signals, we're including them
	# to show when and how to emit them.
	# Watch our signals tutorial for more information.
	return


func generate_perimeter() -> void:
	# Fills the outer edges of the map with the border tiles.
	# Randomly selects from the tiles marked as `Cell.OUTER` using the funciton `_pick_random_texture`.
	return


func generate_inner() -> void:
	# Fills the inside of the map the inner tiles from the remaining types: `Cell.GROUND` and `Cell.OBSTACLE` using the
	# `get_random_tile` function that takes the probability for `Cell.GROUND` tiles to have some more control
	# over what types of tiles we'll be placing.
	return

