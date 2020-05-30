extends Node

Global.menu = self

func _ready():
	get_node("root/Options").connect("changemusicvolume", self, "changemusicvolume")

func changemusicvolume(value):
	print(value)
	get_node("MenuMusic").set_volume(value)
