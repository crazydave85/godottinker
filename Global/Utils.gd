extends Node


const SAVE_LOCATION = "res://savegame.bin"


func saveGame():
	var file = FileAccess.open(SAVE_LOCATION, FileAccess.WRITE)
	var data: Dictionary = {
		"PlayerDickishness": Game.PlayerDickishness,
		"PlayerCash": Game.PlayerCash,
		"Key": Game.Key,
	}
	var jstr = JSON.stringify(data)
	file.store_line(jstr)
	
func loadGame():
	var file = FileAccess.open(SAVE_LOCATION, FileAccess.READ)
	if FileAccess.file_exists(SAVE_LOCATION) == true:
		if not file.eof_reached():
			var current_line = JSON.parse_string(file.get_line())
			if current_line:
				Game.PlayerDickishness = current_line["PlayerDickishness"]
				Game.PlayerCash = current_line["PlayerCash"]
				Game.Key = current_line["Key"]
				
