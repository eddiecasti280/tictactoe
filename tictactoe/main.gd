extends Node2D

# Declare member variables here. Examples:
var grid = [[0, 0, 0], [0, 0, 0], [0, 0, 0]] # 2D array with 3 rows and 3 columns instanciated at 0
var score : int = 0
var player_name : String = "MonsieurBloo"
var game_counter : int = 0
var winner : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	resize()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	game_counter += 1
	#print(get_node("Game_grid/bottom_center_button").is_disabled())
	
	# WORK ON THIS AFTER MAKING SURE GAME LOGIC FUNCTIONS!!!!!!!!!!
	#for node in get_node("Game_grid").get_children():
		#var node_address : String = "Game_grid/" + node.name # use in helper functions to clean up code
			
	if get_node("Game_grid/top_left_button").is_pressed():
		grid[0][0] = 1
	if get_node("Game_grid/top_center_button").is_pressed():
		grid[0][1] = 1
	if get_node("Game_grid/top_right_button").is_pressed():
		grid[0][2] = 1
	if get_node("Game_grid/middle_left_button").is_pressed():
		grid[1][0] = 1
	if get_node("Game_grid/middle_center_button").is_pressed():
		grid[1][1] = 1
	if get_node("Game_grid/middle_right_button").is_pressed():
		grid[1][2] = 1
	if get_node("Game_grid/bottom_left_button").is_pressed():
		grid[2][0] = 1	
	if get_node("Game_grid/bottom_center_button").is_pressed(): 
		grid[2][1] = 1
	if get_node("Game_grid/bottom_right_button").is_pressed():  
		grid[2][2] = 1
		
	if get_node("Game_grid/top_left_button").is_disabled():
		grid[0][0] = 2
	if get_node("Game_grid/top_center_button").is_disabled():
		grid[0][1] = 2
	if get_node("Game_grid/top_right_button").is_disabled():
		grid[0][2] = 2
	if get_node("Game_grid/middle_left_button").is_disabled():
		grid[1][0] = 2
	if get_node("Game_grid/middle_center_button").is_disabled():
		grid[1][1] = 2
	if get_node("Game_grid/middle_right_button").is_disabled():
		grid[1][2] = 2
	if get_node("Game_grid/bottom_left_button").is_disabled():
		grid[2][0] = 2	
	if get_node("Game_grid/bottom_center_button").is_disabled(): 
		grid[2][1] = 2
	if get_node("Game_grid/bottom_right_button").is_disabled():  
		grid[2][2] = 2
	
	print(grid)
	
func resize():
	OS.set_window_size(Vector2(800,500))

"""
func grid_alter(row, col):
	if row == 'top':
		if col == 'left':
			
		elif col == 'center':
			
		else:
			
	elif row == 'middle':
		if col == 'left':
			
		elif col == 'center':
			
		else:
			
	else:
		if col == 'left':
		
		elif col == 'center':
			
		else:
			

func check_square(square):
	if square.is
	elif

func keep_status(arr):
	for row in arr:
		for value in row:
			if arr[row][value]
"""

func check_win_condition(arr):
	# arr is a 2D list
	
	# row condition
	for row in arr:
		if row[0] == row[1] == row[2] and row[0] != 0:
			if row[0] == 1:
				return 'Player'
			else:
				return 'CPU'

	# column condition
	#for 
	
	# diagonal condition
