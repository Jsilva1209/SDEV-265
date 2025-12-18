extends Control
var cardAsset = preload("res://Assets/Scenes/card.tscn")

var cardPosCent = Vector2(500,350)

# Called when the node enters the scene tree for the first time.
func _ready():
	for n in 5:
		var NewCard = cardAsset.instantiate()
		add_child(NewCard)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
