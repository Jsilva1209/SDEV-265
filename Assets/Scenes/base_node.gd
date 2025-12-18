extends Node

var menuScene = preload("res://Assets/Scenes/main_menu.tscn")
var gameScene = preload("res://Assets/Scenes/game.tscn")

var currentScene: Node = null



func _ready():
	loadScene("MainMenu")

func loadScene(desiredSceneName):
	if currentScene:
		currentScene.queue_free()
		currentScene = null

	var packed: PackedScene
	
	if desiredSceneName == "MainMenu":
		packed = menuScene
	elif desiredSceneName == "Game":
		packed = gameScene
	else:
		push_error("Scene not found: " + desiredSceneName)
		return
	
	currentScene = packed.instantiate()
	add_child(currentScene)
	
