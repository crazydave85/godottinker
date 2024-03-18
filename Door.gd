extends StaticBody2D
var in_door_zone = false
func _on_area_2d_body_entered(body: PhysicsBody2D):
	in_door_zone = true
	print(in_door_zone)
	if Game.Key == false:
		print("Door is Locked")
		emit_signal("Door is Locked find the key")
	if Game.Key == true:
		print("Door is Unlocked")
		emit_signal("Door is unlocked")
		get_tree().change_scene_to_file("res://Objects/opendoor.tscn")
		
	


func _on_area_2d_body_exited(body):
	in_door_zone = false
	print("")
