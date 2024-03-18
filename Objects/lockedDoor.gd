extends Area2D

signal Door_is_unlocked

var in_door_zone = false


# Called when the node enters the scene tree for the first time.


func _on_body_entered(body: PhysicsBody2D):
	in_door_zone = true
	print("door state: " + str(in_door_zone))
	if Game.Key == false:
		print("Door is Locked")
		emit_signal("Door is Locked find the key")
	if Game.Key == true:
		print("Door is Unlocked")
		emit_signal("Door_is_unlocked")
		#get_tree().change_scene_to_file("res://Objects/opendoor.tscn")
		$ClosedDoor.visible = false



func _on_body_exited(body: PhysicsBody2D):
	in_door_zone = false
	print("Doors state is "+ str(in_door_zone))
