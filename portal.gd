extends Area2D


# Chamado quando o node entra na árvore da cena pela primeira vez.
func _ready() -> void:
	pass


# Chamado a cada frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	var cena = get_tree().current_scene
	print(cena.name)

	if cena.name == "fase_01" and body.name == "player":
		get_tree().change_scene_to_file("res://fase_02")

	elif cena.name == "fase_02" and body.name == "player":
		get_tree().change_scene_to_file("res://fase_01")
