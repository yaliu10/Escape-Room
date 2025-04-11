extends Node

@export var text = "heyhey"

var interaction_type = "info"
var ArtInfo

func interaction():
	print("interacting")
	ArtInfo.toogle(true)
