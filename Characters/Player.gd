extends CharacterBody2D


var SPEED = 400.0


# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var anim = get_node("AnimatedSprite2D")

func _ready():
	anim.play("Idle")

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right","ui_up","ui_down")
	if direction:
		velocity = direction * SPEED
		if Input.is_action_pressed("ui_left"):
			anim.play("Left")
		if Input.is_action_pressed("ui_right"):
			anim.play("Right")
		if Input.is_action_pressed("ui_up"):
			anim.play("Up")
		if Input.is_action_pressed("ui_down"):
			anim.play("Down")
	else:
		velocity.x = 0
		velocity.y = 0
		anim.play("Idle")

	move_and_slide()
