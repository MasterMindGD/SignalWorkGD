extends TextureButton


func _on_button_down() -> void:
	for block in get_tree().get_nodes_in_group("blocks"):
		block.delete()
