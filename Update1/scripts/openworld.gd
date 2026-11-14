extends Node2D


var hit: bool = false
@onready var animated_sprite_2d_slime: AnimatedSprite2D = $AnimatedSprite2D_slime

func play_animation_slime() -> void:
	if hit:
		animated_sprite_2d_slime.play("hit")

func _on_animated_sprite_2d_slime_animation_finished() -> void:
	if hit:
		hit = false
