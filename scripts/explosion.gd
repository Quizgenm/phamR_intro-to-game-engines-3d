extends Node3D
@onready var smoke: GPUParticles3D = $smoke
@onready var fire: GPUParticles3D = $fire
@onready var hotdebris: GPUParticles3D = $hotdebris

func explode():
	hotdebris.emitting = true
	smoke.emitting = true
	fire.emitting = true
	await get_tree().create_timer(2.0).timeout
	queue_free()
