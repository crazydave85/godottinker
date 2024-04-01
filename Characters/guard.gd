extends Node2D

@onready var path_follow : PathFollow2D = $Path2D/PathFollow2D
@onready var animated : AnimatedSprite2D = $Path2D/PathFollow2D/Guard/AnimatedSprite2D
@export var speed = 100
@onready var player_with_guard = false

var Player 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func move():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
		
	if player_with_guard == true:
		speed = 0	
		path_follow.progress += speed * _delta
	else:
		speed = 100
		path_follow.progress += speed * _delta
		if path_follow.position.x > 11:
			animated.flip_h = false
		elif path_follow.position.x  < -57.57 :
			animated.flip_h = true
		else:
			animated.pause() 
			
	if Input.is_action_pressed("Piss"):
		print("Dont piss on me")
		Game.PlayerDickishness = Game.PlayerDickishness - 10
	
	if Input.is_action_pressed("ui_accept"):
		print("Hello There")


func _on_interaction_area_entered(_body: PhysicsBody2D):
		player_with_guard = true
		speed = 0
		print("guard state: player_with_guard")
	

func _on_interaction_area_exited(_body: PhysicsBody2D):
		player_with_guard = false
		speed = 100

