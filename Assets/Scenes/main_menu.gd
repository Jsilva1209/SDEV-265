extends Control
@export var menuCards: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var baseNode = get_parent()
	
	var mainNode = get_node("Main")
	var helpNode = get_node("Help")
	var settingsNode = get_node("Settings")
	

	var buttonList = get_node("Main/List")
	var playBtn = buttonList.get_node("PlayBtn")
	var quitBtn = buttonList.get_node("QuitBtn")
	var helpBtn = buttonList.get_node("RulesBtn")
	var settingsBtn = buttonList.get_node("SettingsBtn")
	
	var settingsBackBtn = settingsNode.get_node("BackBtn")
	var helpBackBtn = helpNode.get_node("BackBtn")
	
	playBtn.pressed.connect(func():
		baseNode.loadScene("Game")
	)
	
	quitBtn.pressed.connect(func():
		get_tree().quit()
	)
	
	helpBtn.pressed.connect(func():
		mainNode.visible = false
		helpNode.visible = true
	)
	helpBackBtn.pressed.connect(func():
		mainNode.visible = true
		helpNode.visible = false
	)

	settingsBtn.pressed.connect(func():
		mainNode.visible = false
		settingsNode.visible = true
	)
	settingsBackBtn.pressed.connect(func():
		mainNode.visible = true
		settingsNode.visible = false
	)
	animateCards()
	

func animateCards():
	var card = get_node("Main/Card")
	var card2 = get_node("Main/Card2")
	var card3 = get_node("Main/Card3")
	var card4 = get_node("Main/Card4")
	var card5 = get_node("Main/Card5")
	card.animStartTime = float(0.4)
	card.mainMenu()
	card2.animStartTime = float(0.3)
	card2.mainMenu()
	card3.animStartTime = float(0.2)
	card3.mainMenu()
	card4.animStartTime = float(0.1)
	card4.mainMenu()
	card5.animStartTime = float(0.0)
	card5.mainMenu()	
