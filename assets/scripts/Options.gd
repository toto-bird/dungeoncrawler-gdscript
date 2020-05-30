extends Control

signal changemusicvolume(value)

func _on_MusicVolume_value_changed(value):
	get_node("CenterContainer/VBoxContainer/MusicVolume/MusicVolumePercent").text = str(value) + '%'
	emit_signal("changemusicvolume", value)

func _on_Back_pressed():
	get_tree().change_scene("res://assets/scenes/TitleScreen.tscn")
