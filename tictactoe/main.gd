extends Node2D


# Declare member variables here. Examples:
var grid = [[0, 0, 0], [0, 0, 0], [0, 0, 0]] # 2D array with 3 rows and 3 columns instanciated at 0
var score : int = 0
var player_name : String = "MonsieurBloo"
var game_counter : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	resize()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	game_counter += 1

func resize():
	OS.set_window_size(Vector2(800,500))
