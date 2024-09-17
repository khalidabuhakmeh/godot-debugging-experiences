extends Control

@onready var label: Label = $VBoxContainer/Label

func _ready() -> void:
	var buttons = get_tree().get_nodes_in_group("Buttons")
	for b:Button in buttons:
		var pressed = Callable(self, "_on_pressed").bind(b)
		b.pressed.connect(pressed)

func _on_pressed(which: Button) -> void:
	print(which)
	label.text = which.text
	pass # Replace with function body.
