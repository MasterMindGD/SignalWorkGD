extends TextureButton
#Llama a la Scena para poder instanciarla
var RedBlock = preload("res://scenes/Blocks/Red/BlockRed.tscn")

func _on_button_down() -> void:
	generate_block()
#Función para generar los bloques
func generate_block():
	var instance = RedBlock.instantiate()
	get_parent().add_child(instance) #Se hace hija del RedGenerator
	instance.position = self.position #Para coordinar con las coordenadas del padre
