extends TextureButton
#Llama a la Scena para poder instanciarla
var VioletBlock = preload("res://scenes/Blocks/Violet/BlockViolet.tscn")

func _on_button_down() -> void:
	generate_block()
#Función para generar los bloques
func generate_block():
	var instance = VioletBlock.instantiate() 
	get_parent().add_child(instance) #Se hace hija del VioletGenerator
	instance.position = self.position #Para coordinar con las coordenadas del padre
