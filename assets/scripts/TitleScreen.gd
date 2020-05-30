extends Control

var quitconfirmationmenu

func _ready():
	quitconfirmationmenu = get_node("QuitConfirmationMenu")

func _on_OptionsButton_pressed():
	get_tree().change_scene("res://assets/scenes/Options.tscn")

func _on_QuitButton_pressed():
	quitconfirmationmenu.show()

func _on_QuitConfirmationMenu_confirmed():
	get_tree().quit()
