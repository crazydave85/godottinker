extends Control


func _on_quit_pressed():
	get_tree().quit()


func _on_play_pressed():
	get_tree().change_scene_to_file("res://World/world.tscn")



func _ready():
	Utils.saveGame()
	print(Game.PlayerDickishness)
	print(Game.PlayerCash)
	print(Game.Key)

func _on_load_pressed():
	Utils.loadGame()
	print(Game.PlayerDickishness)
	print(Game.PlayerCash)
